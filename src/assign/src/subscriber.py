#!/usr/bin/env python3

import numpy as np
import rospy
from assign.msg import myMess  # Import your custom message type
from sensor_msgs.msg import JointState
from open_manipulator_msgs.msg import KinematicsPose 
from std_msgs.msg import Float64


class AngleSubscriber:
    def __init__(self):
        rospy.init_node('angle_subscriber')
        
        # Subscribe to the custom 'myMess' message topic
        rospy.Subscriber('angles_topic', myMess, self.angle_callback)
        rospy.Subscriber('/gripper/kinematics_pose', KinematicsPose, self.gripper_kinematics_callback)
        # Subscribe to the standard '/joint_states' topic
        rospy.Subscriber('/joint_states', JointState, self.joint_states_callback)
        self.joint1_pub = rospy.Publisher('/joint1_position/command', Float64, queue_size=10)
        self.joint2_pub = rospy.Publisher('/joint2_position/command', Float64, queue_size=10)
        self.joint3_pub = rospy.Publisher('/joint3_position/command', Float64, queue_size=10)
        self.joint4_pub = rospy.Publisher('/joint4_position/command', Float64, queue_size=10)
        self.rate = rospy.Rate(10)
        self.joint_positions = None
        # Initialize joint_positions
        self.joint_pose=None
        
        rospy.spin()
    def std_DH(theta, alpha, a, d):
        
        DH= np.array([[np.cos(theta),  -np.sin(theta),   0,    a],
                    [np.sin(theta)*np.cos(alpha),  np.cos(theta)*np.cos(alpha),    -np.sin(alpha),   -d*np.sin(alpha)],
                    [np.sin(theta)*np.sin(alpha), np.sin(alpha)*np.cos(theta), np.cos(alpha),  d*np.cos(alpha)],
                    [0,              0,                              0,                              1]])
        return DH
        
        
    def publish_joint_angles(self, joint1_angle, joint2_angle, joint3_angle, joint4_angle):
        self.joint1_pub.publish(joint1_angle)
        self.joint2_pub.publish(joint2_angle)
        self.joint3_pub.publish(joint3_angle)
        self.joint4_pub.publish(joint4_angle)
        
        
    def forward_kinematics(self, q1, q2, q3, q4):
  
        T1 = AngleSubscriber.std_DH(q1, 0, 0, 0.077)
        T2 = AngleSubscriber.std_DH(q2-79.39*np.pi/180 ,-np.pi/2, 0, 0)
        T3 = AngleSubscriber.std_DH(q3+79.39* np.pi/180, 0, 0.130, 0)
        T4 = AngleSubscriber.std_DH(q4, 0, .124,0)
        T5=np.array([[1,0,0,.126],[0,1,0,0],[0,0,1,0],[0,0,0,1]])
        T5 = T1.dot(T2).dot(T3).dot(T4).dot(T5)
        return T5    
    
    def angle_callback(self, data):
        print("Received angles: ", data.angle1, data.angle2, data.angle3, data.angle4)

        # Calculate forward kinematics using the custom message data
        a = self.forward_kinematics(data.angle1, data.angle2, data.angle3, data.angle4)
        self.publish_joint_angles(data.angle1, data.angle2, data.angle3, data.angle4)
        print("########################################################")
        # Print the forward kinematics result
        print("Forward Kinematics Result:")
        print(a[:3, 3])
        
        print("original position of end effector in space")
        if self.joint_pose is not None:
            print("Pose: %f, %f, %f" % (self.joint_pose.x, self.joint_pose.y, self.joint_pose.z))
            print("error : ",a[0][3]-self.joint_pose.x, a[1][3]-self.joint_pose.y,a[2][3]-self.joint_pose.z )
        print("__________________________________________________________")

    def joint_states_callback(self, data):
        # This function will be called when a new message is received on the /joint_states topic
        if self.joint_positions is None:
            self.joint_positions = data.position
            # print("Joint Positions:", self.joint_positions)
    def gripper_kinematics_callback(self, data):
        self.joint_pose = data.pose.position
        # rospy.loginfo("Received gripper kinematics pose: %f, %f, %f", self.joint_pose.x, self.joint_pose.y, self.joint_pose.z)

        

if __name__ == '__main__':
    try:
        subscriber = AngleSubscriber()
    except rospy.ROSInterruptException:
        pass


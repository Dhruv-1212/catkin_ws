#!/usr/bin/env python3

import numpy as np
import rospy
from assign.msg import myMess  # Import your custom message type
from sensor_msgs.msg import JointState
from open_manipulator_msgs.msg import KinematicsPose 

class AngleSubscriber:
    def __init__(self):
        rospy.init_node('angle_subscriber')
        
        # Subscribe to the custom 'myMess' message topic
        rospy.Subscriber('angles_topic', myMess, self.angle_callback)
        rospy.Subscriber('/gripper/kinematics_pose', KinematicsPose, self.gripper_kinematics_callback)
        # Subscribe to the standard '/joint_states' topic
        rospy.Subscriber('/joint_states', JointState, self.joint_states_callback)
        
        self.joint_positions = None  # Initialize joint_positions
        self.joint_pose=None
        
        rospy.spin()
    def std_DH(theta, alpha, a, d):
        
        DH= np.array([[np.cos(theta),  -np.sin(theta),   0,    a],
                    [np.sin(theta)*np.cos(alpha),  np.cos(theta)*np.cos(alpha),    -np.sin(alpha),   -d*np.sin(alpha)],
                    [np.sin(theta)*np.sin(alpha), np.sin(alpha)*np.cos(theta), np.cos(alpha),  d*np.cos(alpha)],
                    [0,              0,                              0,                              1]])
        return DH

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
        print("########################################################")

        print("Original joint states:")
        if self.joint_positions is not None:
            print("Joint angles:", self.joint_positions[-4:])
        print("########################################################")
        
        print("original position of end effector in space")
        if self.joint_pose is not None:
            
            print("Pose: %f, %f, %f" % (self.joint_pose.x, self.joint_pose.y, self.joint_pose.z))

        # Calculate forward kinematics using the custom message data
        a = self.forward_kinematics(data.angle1, data.angle2, data.angle3, data.angle4)
        print("########################################################")
        # Print the forward kinematics result
        print("Forward Kinematics Result:")
        print(a[:3, 3])
        
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


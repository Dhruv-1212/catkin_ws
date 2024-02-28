#!/usr/bin/env python3


import rospy
from assign.msg import myMess
from sensor_msgs.msg import JointState

class AnglePublisher:
    def __init__(self):
        rospy.init_node('angle_publisher') # Initialize the ROS node with a single name
        self.pub_angle = rospy.Publisher('angles_topic', myMess, queue_size=10)
        # self.pub_joint_states = rospy.Publisher('/joint_states', JointState, queue_size=10)
        self.rate = rospy.Rate(1) # 1 Hz, adjust as needed
    def publish_angles(self):
        while not rospy.is_shutdown():
            angle_msg = myMess()
            angle_msg.angle1 = float(input("Enter angle1: "))
            angle_msg.angle2 = float(input("Enter angle2: "))
            angle_msg.angle3 = float(input("Enter angle3: "))
            angle_msg.angle4 = float(input("Enter angle4: "))

            joint_state = JointState()
            joint_state.header.stamp = rospy.Time.now()
            joint_state.name = ["joint1", "joint2", "joint3", "joint4"] # Names of the joints
            joint_state.position = [angle_msg.angle1, angle_msg.angle2, angle_msg.angle3, angle_msg.angle4] # Actual joint angles

    # Publish the messages
            self.pub_angle.publish(angle_msg)
            # self.pub_joint_states.publish(joint_state)
            self.rate.sleep()

if __name__ == '__main__':
    try:
        publisher = AnglePublisher()
        publisher.publish_angles()
    except rospy.ROSInterruptException:
        pass
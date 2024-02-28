#!/usr/bin/env python3

import rospy
from assign2.msg import ourMsg
from sensor_msgs.msg import JointState

class jointPublisher:
    def __init__(self):
        rospy.init_node('joint_publisher') # Initialize the ROS node with a single name
        self.pub_angle = rospy.Publisher('joint_topic', ourMsg, queue_size=10)
     
        self.rate = rospy.Rate(1) # 1 Hz, adjust as needed
    def publish_joint(self):
        while not rospy.is_shutdown():
            joint_msg = ourMsg()
            joint_msg.x = float(input("Enter x: "))
            joint_msg.y = float(input("Enter y: "))
            joint_msg.z= float(input("Enter z: "))
            joint_msg.fi = float(input("Enter fi: "))

            
            self.pub_angle.publish(joint_msg)
            
            self.rate.sleep()

if __name__ == '__main__':
    try:
        publisher = jointPublisher()
        publisher.publish_joint()
    except rospy.ROSInterruptException:
        pass
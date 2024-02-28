#!/usr/bin/env python3
import rospy
from nav_msgs.msg import Odometry

def odom_callback(odom_msg):
    position = odom_msg.pose.pose.position
    orientation = odom_msg.pose.pose.orientation
    print("Robot Position: x={}, y={}, z={}".format(position.x, position.y, position.z))
    print("Robot Orientation: x={}, y={}, z={}, w={}".format(orientation.x, orientation.y, orientation.z, orientation.w))

def subscribe_to_odom():
    rospy.init_node('odom_subscriber_node', anonymous=True)
    rospy.Subscriber('/odom', Odometry, odom_callback)
    rospy.spin()

if __name__ == '__main__':
    try:
        subscribe_to_odom()
    except rospy.ROSInterruptException:
        pass



class
    init
        pub and sub
        x y yaw variable

        publisher fn
        run()
    rospy.spin(or while loop)
#!/usr/bin/env python3
import rospy
import tf
import math
from nav_msgs.msg import Odometry
def callback(odom_msg):
   
    quaternion = (
        odom_msg.pose.pose.orientation.x,
        odom_msg.pose.pose.orientation.y,
        odom_msg.pose.pose.orientation.z,
        odom_msg.pose.pose.orientation.w
    )

  
    euler = tf.transformations.euler_from_quaternion(quaternion)
    roll = euler[0]
    pitch = euler[1]
    yaw = euler[2]

    print("Current orientation:")
    print("Roll:", math.degrees(roll), "degrees")
    print("Pitch:", math.degrees(pitch), "degrees")
    print("Yaw:", math.degrees(yaw), "degrees")

rospy.init_node('get_turtlebot_orientation')

rospy.Subscriber('/odom', Odometry, callback)

rospy.spin()

#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist

def move_robot():
    rospy.init_node('move_robot_node', anonymous=True)
    velocity_publisher = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
    rate = rospy.Rate(100)  # 10 Hz
    
    # Create a Twist message to control linear and angular velocities
    move_cmd = Twist()
    move_cmd.linear.x = 0.2  # Linear velocity in the x-axis
    move_cmd.angular.z = 1  # Angular velocity in the z-axis

    while not rospy.is_shutdown():
        velocity_publisher.publish(move_cmd)
        rate.sleep()

if __name__ == '__main__':
    try:
        move_robot()
    except rospy.ROSInterruptException:
        pass

#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist
import math
import time
from nav_msgs.msg import Odometry
import tf
class TurtleBotController:
    def __init__(self):
        rospy.init_node('turtlebot_controller', anonymous=True)

        # Create a publisher for velocity commands
        self.velocity_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)

        # Create a subscriber for the turtle's pose
        self.pose_sub = rospy.Subscriber('/odom', Odometry,  self.pose_callback)

        self.rate = rospy.Rate(100)  # 100 Hz
        self.curr_pose=None
        


    def pose_callback(self, odom_msg):
        self.position = odom_msg.pose.pose.position
        quaternion = (odom_msg.pose.pose.orientation.x, odom_msg.pose.pose.orientation.y, odom_msg.pose.pose.orientation.z,
                       odom_msg.pose.pose.orientation.w)

  
        angles = tf.transformations.euler_from_quaternion(quaternion)
        self.ang = angles[2]
      
    def update_angle(self, target_x, target_y):
        while not rospy.is_shutdown():
            
            if self.position is not None:
       
                angle_to_target = math.atan2(target_y - self.position.y, target_x - self.position.x)
                print("fn")
                
         
                angular_velocity = 1.0 * (angle_to_target - self.ang)

    
                max_angular_velocity = .5
                if angular_velocity > max_angular_velocity:
                    angular_velocity = max_angular_velocity
                elif angular_velocity < -max_angular_velocity:
                    angular_velocity = -max_angular_velocity

                twist_cmd = Twist()
                twist_cmd.angular.z = angular_velocity
                self.velocity_pub.publish(twist_cmd)

                if abs(angle_to_target - self.ang) < 0.01:
                    print("Turtle has rotated towards the target point.")
                    break
               

            self.rate.sleep()



    def move(self, target_x, target_y, curr_x, curr_y):
        distance=((curr_x-target_x)**2 + (curr_y-target_y)**2)**(1/2)
        speed=.2
        t=time.time()
        curr_dist=0
        while not rospy.is_shutdown():
            if(curr_dist>distance):
                print("reached to destination")
                velocity_msg.linear.x = 0
                self.velocity_pub.publish(velocity_msg)
                break
            if(curr_dist==distance/8 or curr_dist==distance/6 or curr_dist==distance/4 or curr_dist==distance/2):
                update_angle(target_x, target_y)
                print("updating")
            

            velocity_msg = Twist()
            velocity_msg.linear.x = speed
            t_c=time.time()
            curr_dist=speed*(t_c-t)
            self.velocity_pub.publish(velocity_msg)
            print("\n", velocity_msg )
            print("\n" , t_c)
            rospy.Rate(100).sleep()

 

    def rotate_towards_point(self, target_x, target_y):
        while not rospy.is_shutdown():
            
            if self.position is not None:
       
                angle_to_target = math.atan2(target_y - self.position.y, target_x - self.position.x)
               
                curr_x=self.position.x
                curr_y=self.position.y
         
                angular_velocity = 1.0 * (angle_to_target - self.ang)

    
                max_angular_velocity = .5
                if angular_velocity > max_angular_velocity:
                    angular_velocity = max_angular_velocity
                elif angular_velocity < -max_angular_velocity:
                    angular_velocity = -max_angular_velocity

                twist_cmd = Twist()
                twist_cmd.angular.z = angular_velocity
                self.velocity_pub.publish(twist_cmd)

                if abs(angle_to_target - self.ang) < 0.01:
                    print("Turtle has rotated towards the target point.")
                    break
               

            self.rate.sleep()
        self.move(target_x, target_y, curr_x, curr_y)
        # self.run_angular(target_x, target_y)

       


      

if __name__ == '__main__':
    try:
        controller = TurtleBotController()
        a=float(input("x coordinate: "))
        b=float(input("y coordinate: "))
        controller.rotate_towards_point(a,b)
        # controller.run(a,b)


    except rospy.ROSInterruptException:
        pass

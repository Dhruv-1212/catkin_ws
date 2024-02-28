#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
import math
import time

class TurtleBotController:
    def __init__(self):
        rospy.init_node('turtlebot_controller', anonymous=True)

        # Create a publisher for velocity commands
        self.velocity_pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)

        # Create a subscriber for the turtle's pose
        self.pose_sub = rospy.Subscriber('/turtle1/pose', Pose, self.pose_callback)

        self.rate = rospy.Rate(10)  # 10 Hz
        self.curr_pose=None
        

    def pose_callback(self, data):
        self.curr_pose=data
       


#dropped because it does not have ability to turn and do not work if the turtle is turned previously
    def run(self, desired_x, desired_y):
        while not rospy.is_shutdown():

            # Create a Twist message to send velocity commands
            if(self.curr_pose is not None ):
                velocity_msg = Twist()
                weight=1
                velocity_msg.linear.x = weight*(desired_x-self.curr_pose.x) # Linear velocity in the x-axis (forward)
                if(abs(velocity_msg.linear.x)<0.001):
                    velocity_msg.linear.x=0
              
                velocity_msg.linear.y = weight* (desired_y-self.curr_pose.y)
                if(abs(velocity_msg.linear.y)<0.001):
                    velocity_msg.linear.y=0
              
                print(velocity_msg)
                self.velocity_pub.publish(velocity_msg)
                if(velocity_msg.linear.x==0 and velocity_msg.linear.y==0):
                    print("reached the destination")
                    break
                # Publish the velocity command

            self.rate.sleep()
    
    #dropped because the turtle was moving ahead of the desired location
    def run_angular(self, desti_x, desti_y):
        

       
        while not rospy.is_shutdown():

            

            if(self.curr_pose is not None ):
                if((self.curr_pose.x<.01+desti_x and self.curr_pose.x>(-.01+desti_x) )and  
                   (self.curr_pose.y<.01+desti_y and self.curr_pose.y>(-.01+desti_y) )):
                    print("reached the destination")
                    break

                weight=1/10
                velocity_msg = Twist()
                velocity_msg.linear.x = weight*(((self.curr_pose.x-desti_x)**2 + (self.curr_pose.y-desti_y)**2) **(1/2))# Linear velocity in the x-axis (forward)

              
                velocity_msg.linear.y = 0
                print(velocity_msg)
                if( ((self.curr_pose.x-desti_x)**2 + (self.curr_pose.y-desti_y)**2) **(1/2) <.01 ):
                    print("reached the destination")
                    break
                self.velocity_pub.publish(velocity_msg)
             

            self.rate.sleep()


    def move(self, target_x, target_y, curr_x, curr_y):
        distance=((curr_x-target_x)**2 + (curr_y-target_y)**2)**(1/2)
        speed=.4
        t=time.time()
        curr_dist=0
        while not rospy.is_shutdown():
            if(curr_dist>distance):
                print("reached to destination")
                velocity_msg.linear.x = 0
                self.velocity_pub.publish(velocity_msg)
                break

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
            curr_x=0
            curr_y=0
            if self.curr_pose is not None:
       
                angle_to_target = math.atan2(target_y - self.curr_pose.y, target_x - self.curr_pose.x)
                curr_x=self.curr_pose.x
                curr_y=self.curr_pose.y
         
                angular_velocity = 1.0 * (angle_to_target - self.curr_pose.theta)

    
                max_angular_velocity = .5
                if angular_velocity > max_angular_velocity:
                    angular_velocity = max_angular_velocity
                elif angular_velocity < -max_angular_velocity:
                    angular_velocity = -max_angular_velocity

                twist_cmd = Twist()
                twist_cmd.angular.z = angular_velocity
                self.velocity_pub.publish(twist_cmd)

                if abs(angle_to_target - self.curr_pose.theta) < 0.01:
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

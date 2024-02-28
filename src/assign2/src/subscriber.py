#!/usr/bin/env python3

import numpy as np
import rospy
import math
from assign2.msg import ourMsg  # Import your custom message type
from sensor_msgs.msg import JointState
from open_manipulator_msgs.msg import KinematicsPose 

class AngleSubscriber:
    def __init__(self):
        rospy.init_node('joint_subscriber')
        
        # Subscribe to the custom 'myMess' message topic
        rospy.Subscriber('joint_topic', ourMsg, self.joint_state_callback)
        # rospy.Subscriber('/gripper/kinematics_pose', KinematicsPose, self.gripper_kinematics_callback)
        # # Subscribe to the standard '/joint_states' topic
        # rospy.Subscriber('/joint_states', JointState, self.joint_states_callback)
        
        self.joint_positions = None  # Initialize joint_positions
        self.joint_pose=None
        
        rospy.spin()



    ########################################################

    def calculate_angle_with_xy_plane(rot_mat):
        phi = np.arctan2(rot_mat[2, 0], rot_mat[2, 2])
        return phi

    def P3R_inverse_kinematics(a1, a2, a3, x3, y3, theta):
        ## foward kinematics
        # x = a1cos(th1) +a2cos(th1+th2) + a3cos(th1+th2+th3)
        # y = a1sin(th1) +a2sin(th1+th2) + a3sin(th1+th2+th3)
        # theta = th1+th2+th3

        ## Inverse Kinematics of planar 3R robot

        x2 = x3 - a3 * np.cos(theta)
        y2 = y3 - a3 * np.sin(theta)

        cos_th2 = (x2 ** 2 + y2 ** 2 - a1 ** 2 - a2 ** 2) / (2 * a1 * a2)

        sin_th2 = [-np.sqrt(1 - cos_th2 ** 2), np.sqrt(1 - cos_th2 ** 2)]

        th2 = [np.arctan2(sin_th2[0], cos_th2), np.arctan2(sin_th2[1], cos_th2)]

        sin_th1 = [(y2 * (a1 + a2 * np.cos(th2[0])) - a2 * np.sin(th2[0]) * x2) / (
                    a1 ** 2 + a2 ** 2 + 2 * a1 * a2 * np.cos(th2[0])),
                   (y2 * (a1 + a2 * np.cos(th2[1])) - a2 * np.sin(th2[1]) * x2) / (
                               a1 ** 2 + a2 ** 2 + 2 * a1 * a2 * np.cos(th2[1]))]

        cos_th1 = [(x2 * (a1 + a2 * np.cos(th2[0])) + a2 * np.sin(th2[0]) * y2) / (
                    a1 ** 2 + a2 ** 2 + 2 * a1 * a2 * np.cos(th2[0])),
                   (x2 * (a1 + a2 * np.cos(th2[1])) + a2 * np.sin(th2[1]) * y2) / (
                               a1 ** 2 + a2 ** 2 + 2 * a1 * a2 * np.cos(th2[1]))]

        th1 = [np.arctan2(sin_th1[0], cos_th1[0]), np.arctan2(sin_th1[1], cos_th1[1])]

        th3 = [theta - th1[0] - th2[0], theta - th1[1] - th2[1]]

        return th1, th2, th3

    def omx_inverse_kinematics(target_pos, target_rot=None, target_phi=None):

        x = target_pos[0]
        y = target_pos[1]
        z = target_pos[2]

        d1 = 0.077
        a1 = np.sqrt(0.024 ** 2 + 0.128 ** 2)
        alpha_2 = np.arctan(0.024 / 0.128)
        print(np.rad2deg(alpha_2))
        a2 = 0.124
        a3 = 0.126

        x_new = np.sqrt(x ** 2 + y ** 2)
        y_new = z - d1
        if target_phi is None:
            phi = target_pos.calculate_angle_with_xy_plane(target_rot)
        else:
            phi = target_phi

        sm_th = (phi + np.pi) % (2 * np.pi) - np.pi
        if -np.pi / 2 <= sm_th and sm_th <= np.pi / 2:
            x_ph = [[x_new, phi],
                    [-x_new, np.pi - phi]]
        else:
            x_ph = [[x_new, np.pi - phi],
                    [-x_new, phi]]

        theta_1 = [np.arctan2(y, x), np.arctan2(-y, -x)]
        thetas = []
        for i in range(2):
            th2, th3, th4 = target_pos.P3R_inverse_kinematics(a1=a1,
                                                              a2=a2,
                                                              a3=a3,
                                                              x3=x_ph[i][0],
                                                              y3=y_new,
                                                              theta=x_ph[i][1])

            theta_2 = [np.pi / 2 - th2[0] - alpha_2, np.pi / 2 - th2[1] - alpha_2]
            theta_3 = [-np.pi / 2 - th3[0] + alpha_2, -np.pi / 2 - th3[1] + alpha_2]
            theta_4 = [-th4[0], -th4[1]]

            thetas.append([theta_1[i], theta_2[0], theta_3[0], theta_4[0]])
            thetas.append([theta_1[i], theta_2[1], theta_3[1], theta_4[1]])

        return thetas
    def omx_forward_kinematics(joint_pos):
        l1 = 0.077
        l2 = np.sqrt(0.024 ** 2 + 0.128 ** 2)
        alpha_2 = np.arctan(0.024 / 0.128)
        l3 = 0.124
        l4 = 0.126

        # _0T1 = np.array([[np.cos(joint_pos[0]), -np.sin(joint_pos[0]), 0, 0.012],
        #                  [np.sin(joint_pos[0]), np.cos(joint_pos[0]), 0, 0],
        #                  [0, 0, 1, l1],
        #                  [0, 0, 0, 1]])

        _0T1 = np.array([[np.cos(joint_pos[0]), -np.sin(joint_pos[0]), 0, 0.0],
                         [np.sin(joint_pos[0]), np.cos(joint_pos[0]), 0, 0],
                         [0, 0, 1, l1],
                         [0, 0, 0, 1]])

        _1T2 = np.array([[np.cos(joint_pos[1]), 0, np.sin(joint_pos[1]), l2 * np.sin(joint_pos[1] + alpha_2)],
                         [0, 1, 0, 0],
                         [-np.sin(joint_pos[1]), 0, np.cos(joint_pos[1]), l2 * np.cos(joint_pos[1] + alpha_2)],
                         [0, 0, 0, 1]])

        _2T3 = np.array([[np.cos(joint_pos[2]), 0, np.sin(joint_pos[2]), l3 * np.cos(joint_pos[2])],
                         [0, 1, 0, 0],
                         [-np.sin(joint_pos[2]), 0, np.cos(joint_pos[2]), -l3 * np.sin(joint_pos[2])],
                         [0, 0, 0, 1]])

        _3T4 = np.array([[np.cos(joint_pos[3]), 0, np.sin(joint_pos[3]), l4 * np.cos(joint_pos[3])],
                       [0, 1, 0, 0],
                       [-np.sin(joint_pos[3]), 0, np.cos(joint_pos[3]), -l4 * np.sin(joint_pos[3])],
                       [0, 0, 0, 1]])

        _0T4 = np.matmul(np.matmul(np.matmul(_0T1, _1T2), _2T3), _3T4)

        return _0T4
    def joint_state_callback(self,data):
        print("recieved data", data.x, data.y, data.z, data.fi)

        self.Inverse_kin(data.x, data.y, data.z, data.fi)
        l=[data.x, data.y, data.z]

        self.omx_inverse_kinematics(l,None, data.fi)
    def Inverse_kin(self, x, y, z,phi ):
    # Calculate θ1
        x=x-.012
        # theta1 = math.atan2(y, x)

        # # Calculate pr (r-coordinate)
        # pr = math.sqrt(x**2 + y**2)

        # # Calculate r3 and z3
        # r3 = pr
        # z3 = z - .065  # Assuming d1 is the vertical offset

        # # Calculate r2 and z2
        # r2 = r3 - .126 * math.cos(phi)
        # z2 = z3 - .126* math.sin(phi)

        # # Calculate θ3
        # D= (r2**2 + z2**2 - .130**2 - .124**2) / (2 * .130 * .124)
        # cos_theta3 = (r2**2 + z2**2 - .13**2 - .124**2) / (2 * .13 * .124)
        # theta3_1 = math.atan2(math.sqrt(1 - cos_theta3**2), cos_theta3)+1.3856169


        # # theta3_1=math.atan2(-math.sqrt(1-D*D),D)+1.3856169
        # # theta3_2=math.atan2(-math.sqrt(1-D*D),D)


        # # Calculate θ2
        # # cos_theta2 = ((.130 + .124 * cos_theta3) * r2 + .124 * math.sin(theta3) * z2) / (r2**2 + z2**2)
        # # sin_theta2 = ((.130 + .124 * cos_theta3) * z2 - .124 * math.sin(theta3) * r2) / (r2**2 + z2**2)
        # # theta2 = math.atan2(sin_theta2, cos_theta2)

        # theta2=math.atan2(z3,r3)-math.atan2(.124*math.sin(theta3_1),(.13+.124*math.cos(theta3_1)))
        # # Calculate θ4
        # theta2-=1.3856169
        # theta4 = phi - (theta2 + theta3_1)

        # print(theta1,theta2, theta3_1, theta4)


        ##################################################




        # x=x-.012
        # theta1 = math.atan2(y, x)
        # pr = math.sqrt(x**2 + y**2)
        #
        # a2 = 0.124
        # a3 = 0.126
        #
        # r3 = pr
        # z3 = z - .077
        #
        # r2 = r3 - .126 * math.cos(phi)
        # z2 = z3 - .126* math.sin(phi)
        #
        # # now for 2 link
        # cos_theta=(r2**2 + z2**2 - (.13**2 + .124**2))/2*.13*.124
        # t3=math.acos(cos_theta)
        # t3_2=-t3
        # t2=math.atan2(z2,r2)+math.atan2(.124*math.sin(t3),(0.13+.124*math.cos(t3)))
        # t2_2=math.atan2(z2,r2)+math.atan2(.124*math.sin(-t3),(0.13+.124*math.cos(-t3)))
        #
        #
        # print(theta1, t2, t3)
        #
        # t3=t3-t2
        # t3_2=t3_2-t2_2
        #
        # t2=np.pi/2 - t2 - 10.61*np.pi/180
        # t2_2=np.pi/2 - t2_2 - 10.61*np.pi/180
        # t4=phi-(t2+t3)
        # t4_2=phi-(t2_2+t3_2)
        # print(theta1, t2, t3, t4)
        # print(theta1, t2_2, t3_2, t4_2)

if __name__ == '__main__':
    try:
        subscriber = AngleSubscriber()
    except rospy.ROSInterruptException:
        pass

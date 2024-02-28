# !/usr/bin/env python3
import rospy
import numpy as np
from std_msgs.msg import Float64


class RobotArmController:
    def __init__(self):
        rospy.init_node('angle_subscriber')
        self.joint1_pub = rospy.Publisher('/joint1_position/command', Float64, queue_size=10)
        self.joint2_pub = rospy.Publisher('/joint2_position/command', Float64, queue_size=10)
        self.joint3_pub = rospy.Publisher('/joint3_position/command', Float64, queue_size=10)
        self.joint4_pub = rospy.Publisher('/joint4_position/command', Float64, queue_size=10)

        self.initial_position = np.array([0.134, 0.0, 0.214])
        self.final_position = np.array([0.17, 0.0, 0.214])
        self.num_points = 100
        self.target_phi = 0

        self.trajectory = self.generate_trajectory(self.initial_position, self.final_position, self.num_points)
        self.joint_angles_trajectory = self.calculate_joint_angles(self.trajectory)
        self.send_joint_angles(self.joint_angles_trajectory)

    def calculate_angle_with_xy_plane(self, rot_mat):
        phi = np.arctan2(rot_mat[2, 0], rot_mat[2, 2])
        return phi

    def P3R_inverse_kinematics(self, a1, a2, a3, x3, y3, theta):
        # Inverse Kinematics logic
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


    def omx_inverse_kinematics(self, target_pos, target_rot=None, target_phi=None):
        # Inverse Kinematics logic
        x = target_pos[0]
        y = target_pos[1]
        z = target_pos[2]

        d1 = 0.077
        a1 = np.sqrt(0.024 ** 2 + 0.128 ** 2)
        alpha_2 = np.arctan(0.024 / 0.128)
        # print(np.rad2deg(alpha_2))
        a2 = 0.124
        a3 = 0.126

        x_new = np.sqrt(x ** 2 + y ** 2)
        y_new = z - d1
        if target_phi is None:
            phi = self.calculate_angle_with_xy_plane(target_rot)
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
            th2, th3, th4 = self.P3R_inverse_kinematics(a1=a1,
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
        print(thetas)
        return thetas

    def divide_trajectory(self, initial_position, final_position, N):
        # Divide trajectory logic
        x1, y1, theta1 = initial_position
        x2, y2, theta2 = final_position

        trajectory = []

        for i in range(N):
            alpha = i / (N - 1)
            x3 = (1 - alpha) * x1 + alpha * x2
            y3 = (1 - alpha) * y1 + alpha * y2
            theta3 = (1 - alpha) * theta1 + alpha * theta2
            trajectory.append((x3, y3, theta3))

        return trajectory


    def generate_trajectory(self, initial_position, final_position, num_points):
        delta = (final_position - initial_position) / num_points
        trajectory = [initial_position + i * delta for i in range(num_points)]
        return trajectory

    def calculate_joint_angles(self, trajectory):
        joint_angles_trajectory = []
        for target_position in trajectory:
            thetas = self.omx_inverse_kinematics(target_position, target_phi=self.target_phi)
            joint_angles_trajectory.append(np.deg2rad(thetas))
        return joint_angles_trajectory

    def publish_joint_angles(self, joint1_angle, joint2_angle, joint3_angle, joint4_angle):
        self.joint1_pub.publish(joint1_angle)
        self.joint2_pub.publish(joint2_angle)
        self.joint3_pub.publish(joint3_angle)
        self.joint4_pub.publish(joint4_angle)

    def send_joint_angles(self, joint_angles_trajectory):
        for joint_angles in joint_angles_trajectory:
            self.publish_joint_angles(joint_angles[0], joint_angles[1], joint_angles[2], joint_angles[3])


if __name__ == "__main__":
    try:
        robot_controller = RobotArmController()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass

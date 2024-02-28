#!/usr/bin/env python3
import rospy
import numpy as np
from exam.srv import mySer

class RobotArmController:
    def __init__(self):
        rospy.init_node('exam')

        self.rate = rospy.Rate(10)

        # self.pub_angle.publish(angle_msg)
        # self.time=[1,1,1,1,1,1]
        self.letter_K=np.array([[.025,.05, .241],[.225,.05, .241],[.125,.05, .241],[.225,-.05, .241],[.125,.05, .241],[.025,-.05, .241]])
        self.intermediate_points = self.generate_intermediate_points()
        self.letter_K=self.intermediate_points
        # self.time = [1]
        # self.letter_K = np.array(
        #     [[.025, .05, .241]])
        self.divide_points = 10
        self.target_phi = 0
        self.angles=[]
        # self.trajectory = self.divided_trajectory(self.initial_position, self.final_position, self.divide_points)
        # self.joint_angles_trajectory = self.calculate_joint_angles(self.trajectory)
        # self.send_joint_angles(self.joint_angles_trajectory)
        # Call the inverse_for_point function automatically
        self.inverse_for_point()
        # Call the calling_req function automatically
        self.calling_req()
        rospy.spin()

    def generate_intermediate_points(self):
        intermediate_points = []
        for i in range(len(self.letter_K) - 1):
            # Get current and next points
            current_point = self.letter_K[i]
            next_point = self.letter_K[i + 1]

            # Generate 3 intermediate points between current and next points
            interpolated_points = np.linspace(current_point, next_point, num=5, endpoint=False)[1:-1]
            intermediate_points.extend(interpolated_points)

        # Convert the list of intermediate points back to a NumPy array
        intermediate_points = np.array(intermediate_points)

        return intermediate_points
    def P3R_inverse_kinematics(self, a1, a2, a3, x3, y3, theta):
        # Inverse Kinematics logic
        x2 = x3 - a3 * np.cos(theta)
        y2 = y3 - a3 * np.sin(theta)

        cos_th2 = (x2 ** 2 + y2 ** 2 - a1 ** 2 - a2 ** 2) / (2 * a1 * a2)
        sin_th2 = [-np.sqrt(1 - cos_th2 ** 2), np.sqrt(1 - cos_th2 ** 2)]

        th2 = [np.arctan2(sin_th2[0], cos_th2), np.arctan2(sin_th2[1], cos_th2)]

        sin_th1 = [(y2 * (a1 + a2 * np.cos(th2[0])) - a2 * np.sin(th2[0]) * x2) /
                   (a1 ** 2 + a2 ** 2 + 2 * a1 * a2 * np.cos(th2[0])),
                   (y2 * (a1 + a2 * np.cos(th2[1])) - a2 * np.sin(th2[1]) * x2) /
                   (a1 ** 2 + a2 ** 2 + 2 * a1 * a2 * np.cos(th2[1]))]

        cos_th1 = [(x2 * (a1 + a2 * np.cos(th2[0])) + a2 * np.sin(th2[0]) * y2) /
                   (a1 ** 2 + a2 ** 2 + 2 * a1 * a2 * np.cos(th2[0])),
                   (x2 * (a1 + a2 * np.cos(th2[1])) + a2 * np.sin(th2[1]) * y2) /
                   (a1 ** 2 + a2 ** 2 + 2 * a1 * a2 * np.cos(th2[1]))]

        th1 = [np.arctan2(sin_th1[0], cos_th1[0]), np.arctan2(sin_th1[1], cos_th1[1])]

        th3 = [theta - th1[0] - th2[0], theta - th1[1] - th2[1]]

        return th1, th2, th3

    def omx_inverse_kinematics(self, target_pos, target_phi=None):
        x = target_pos[0]
        y = target_pos[1]
        z = target_pos[2]

        d1 = 0.077
        a1 = np.sqrt(0.024 ** 2 + 0.128 ** 2)
        alpha_2 = np.arctan(0.024 / 0.128)
        a2 = 0.124
        a3 = 0.126

        x_new = np.sqrt(x ** 2 + y ** 2)
        y_new = z - d1

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
        for i in range(1):
            th2, th3, th4 = self.P3R_inverse_kinematics(a1=a1, a2=a2, a3=a3, x3=x_ph[i][0], y3=y_new, theta=x_ph[i][1])

            theta_2 = [np.pi / 2 - th2[0] - alpha_2, np.pi / 2 - th2[1] - alpha_2]
            theta_3 = [-np.pi / 2 - th3[0] + alpha_2, -np.pi / 2 - th3[1] + alpha_2]
            theta_4 = [-th4[0], -th4[1]]

            thetas.append([theta_1[i], theta_2[0], theta_3[0], theta_4[0]])
            # thetas.append([theta_1[i], theta_2[1], theta_3[1], theta_4[1]])
        print(thetas)
        return thetas



    def inverse_for_point(self):

        for i in self.letter_K:
            temp=self.omx_inverse_kinematics(i,0)
            self.angles.append(temp)

    def calling_req(self):
        for i in range(len(self.angles)):
            self.send_service_request(self.angles[i][0][0],self.angles[i][0][1],self.angles[i][0][2],self.angles[i][0][3], .5)
            rospy.sleep(10)
    def send_service_request(self, angle1, angle2, angle3, angle4, time):
        rospy.wait_for_service('server')  # Wait for the service to be advertised
        try:
            # Create a service proxy
            service_proxy = rospy.ServiceProxy('server', mySer)

            # Create a request object and fill in the values


            # Call the service and get the response
            response = service_proxy(angle1, angle2, angle3, angle4,time)


            if response.response:
                rospy.loginfo("Service call was successful!")
            else:
                rospy.logwarn("Service call failed!")

        except rospy.ServiceException as e:
            rospy.logerr("Service call failed: %s" % e)




if __name__ == "__main__":
    try:
        robot_controller = RobotArmController()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass


# K
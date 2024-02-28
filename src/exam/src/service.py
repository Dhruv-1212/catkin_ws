#!/usr/bin/env python3

import rospy
from open_manipulator_msgs.srv import SetJointPosition, SetJointPositionRequest
from exam.srv import mySer, mySerResponse

class JointPositionPublisher:
    def __init__(self):
        rospy.init_node('service_server_node')  # Initialize the ROS node
        self.service_trajectory = 'goal_joint_space_path'

        self.input_service = rospy.Service('server', mySer, self.handle_service_request)
        rospy.loginfo("Service server is ready to receive requests.")



    def handle_service_request(self, req):

        print("angles recieved")
        # Process the service request and generate a response
        angle1=req.angle1
        angle2=req.angle2
        angle3=req.angle3
        angle4=req.angle4
        time=req.time
        print("sending the recieved angles to service")
        res=self.send_angles(angle1, angle2, angle3, angle4, time)


        return mySerResponse(res)

    def send_angles(self, angle1, angle2, angle3, angle4, time):
        print("service about to publish the data")


        try:

            rospy.wait_for_service(self.service_trajectory)


            send_angles = rospy.ServiceProxy(self.service_trajectory, SetJointPosition)


            arg = SetJointPositionRequest()
            arg.planning_group = "Open Manipulator X Joint Position Control"
            arg.joint_position.joint_name = ["joint1", "joint2", "joint3", "joint4"]
            arg.joint_position.position = [angle1, angle2, angle3, angle4]
            arg.path_time =time

            print("the data for the motion sent and it should moved")
            resp1 = send_angles(arg)
            return True
        except rospy.ServiceException as e:

            rospy.logerr("Service call failed: %s", e)
            return False

if __name__ == "__main__":
    try:
        publisher = JointPositionPublisher()
        rospy.spin()

    except rospy.ROSInterruptException:
        pass

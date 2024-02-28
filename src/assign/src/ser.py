#!/usr/bin/env python3

import rospy
from open_manipulator_msgs.srv import SetJointPosition, SetJointPositionResponse
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint
from control_msgs.msg import FollowJointTrajectoryAction, FollowJointTrajectoryGoal
from actionlib import SimpleActionClient
from std_msgs.msg import Header

# Define a callback function for the service request
def handle_joint_space_path(req):
    # Prompt the user for joint angle input
    joint_position_str = input("Enter joint angles (comma-separated): ")
    joint_positions = [float(val) for val in joint_position_str.split(",")]

    # Create a trajectory for the robot's joints
    joint_trajectory = JointTrajectory()
    joint_trajectory.joint_names = ["joint1", "joint2", "joint3", "joint4", "gripper"]

    # Create a trajectory point
    point = JointTrajectoryPoint()
    point.positions = joint_positions
    point.time_from_start = rospy.Duration(2.0)  # Specify the time at which these positions should be reached

    joint_trajectory.points.append(point)

    # Create a FollowJointTrajectoryGoal and set the trajectory
    goal = FollowJointTrajectoryGoal()
    goal.trajectory = joint_trajectory

    # Send the goal to the robot controller
    action_client.send_goal(goal)

    # Wait for the trajectory to complete
    action_client.wait_for_result()

    # Send a response indicating that the trajectory execution is complete
    response = SetJointPositionResponse()
    response.is_planned = True

    return response

if __name__ == "__main__":
    rospy.init_node("joint_space_path_server")

    # Create a service server for the joint space path
    service = rospy.Service("/open_manipulator/goal_joint_space_path", SetJointPosition, handle_joint_space_path)

    # Create an action client for the robot controller
    action_client = SimpleActionClient("/open_manipulator_controller/follow_joint_trajectory", FollowJointTrajectoryAction)
    action_client.wait_for_server()

    rospy.spin()

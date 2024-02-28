import rospy
from open_manipulator_msgs.msg import KinematicsPose
from open_manipulator_msgs.srv import SetKinematicsPose

def move_to_cartesian_position(x, y, z):
    rospy.wait_for_service('/open_manipulator_controller/move_to_kinematics_pose')
    try:
        set_kinematics_pose = rospy.ServiceProxy('/open_manipulator_controller/move_to_kinematics_pose', SetKinematicsPose)
        req = SetKinematicsPose()
        req.end_effector_name = 'gripper'
        req.kinematics_pose.pose.position.x = x
        req.kinematics_pose.pose.position.y = y
        req.kinematics_pose.pose.position.z = z
        res = set_kinematics_pose(req)
        if res.is_planned:
            rospy.loginfo('Planned successfully!')
        else:
            rospy.loginfo('Planning failed!')
    except rospy.ServiceException as e:
        rospy.loginfo(f'Service call failed: {e}')

if __name__ == '__main__':
    try:
        rospy.init_node('cartesian_position_control_node', anonymous=True)
        move_to_cartesian_position(0.1, 0.1, 0.1)  # Replace with your desired coordinates (x, y, z)
    except rospy.ROSInterruptException:
        pass

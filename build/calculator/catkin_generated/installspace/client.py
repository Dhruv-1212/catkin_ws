#!/usr/bin/env python3

import rospy
from calculator.srv import cal # Import the service message type

class CalcClient:
    def __init__(self):
        rospy.init_node('calc_client')  # Initialize the client node
        print("client node is ready to work")
        rospy.loginfo("ready")

    def fn(self, x, y,op):
        rospy.wait_for_service('service')  
        try:
            calculate= rospy.ServiceProxy('service', cal)
            resp = calculate(x, y,op)
            return resp.ans
        except rospy.ServiceException as e:
            print("Service call failed: %s" % e)

if __name__ == "__main__":
    client = CalcClient()
    x = float(input("Enter the first number: "))
    op=input("Enter the operation: ")
    y = float(input("Enter the second number: "))
    result = client.fn(x, y,op)
    print("%f %s %f = %f" % (x, op, y, result))

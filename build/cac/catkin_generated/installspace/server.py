#!/usr/bin/env python3

import rospy
from cac.srv import calc, calcResponse

class CalcServer:
    def __init__(self):
        rospy.init_node('calc_server')
        self.service = rospy.Service('service', calc, self.handle_calc_request)
        rospy.loginfo("Calculation server is ready.")

    def handle_calc_request(self, req):
        result = req.a + req.b
        # if(req.op =="+"):
        #     result = req.a + req.b
        
        # elif(req.op=="-"):
        #     result=req.a -req.b

        # elif(req.op=="/"):
        #     if(req.b!=0):
        #         result=req.a /req.b
        #     else :
        #         rospy.logerr("Division by zero")
        #         return False, calcResponse(0.0) 
        # elif(req.op=="*"):
        #     result=req.a *req.b

        # else:
        #     rospy.logerr("Invalid operator: %s", req.op)
        #     return False, calcResponse(0.0) 
        return calcResponse(result)

    def run(self):
        rospy.spin()

if __name__ == "__main__":
    try:
        calc_server = CalcServer()
        calc_server.run()
    except rospy.ROSInterruptException:
        pass

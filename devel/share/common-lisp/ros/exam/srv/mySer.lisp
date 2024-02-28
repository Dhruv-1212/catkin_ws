; Auto-generated. Do not edit!


(cl:in-package exam-srv)


;//! \htmlinclude mySer-request.msg.html

(cl:defclass <mySer-request> (roslisp-msg-protocol:ros-message)
  ((angle1
    :reader angle1
    :initarg :angle1
    :type cl:float
    :initform 0.0)
   (angle2
    :reader angle2
    :initarg :angle2
    :type cl:float
    :initform 0.0)
   (angle3
    :reader angle3
    :initarg :angle3
    :type cl:float
    :initform 0.0)
   (angle4
    :reader angle4
    :initarg :angle4
    :type cl:float
    :initform 0.0)
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0))
)

(cl:defclass mySer-request (<mySer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mySer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mySer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exam-srv:<mySer-request> is deprecated: use exam-srv:mySer-request instead.")))

(cl:ensure-generic-function 'angle1-val :lambda-list '(m))
(cl:defmethod angle1-val ((m <mySer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exam-srv:angle1-val is deprecated.  Use exam-srv:angle1 instead.")
  (angle1 m))

(cl:ensure-generic-function 'angle2-val :lambda-list '(m))
(cl:defmethod angle2-val ((m <mySer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exam-srv:angle2-val is deprecated.  Use exam-srv:angle2 instead.")
  (angle2 m))

(cl:ensure-generic-function 'angle3-val :lambda-list '(m))
(cl:defmethod angle3-val ((m <mySer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exam-srv:angle3-val is deprecated.  Use exam-srv:angle3 instead.")
  (angle3 m))

(cl:ensure-generic-function 'angle4-val :lambda-list '(m))
(cl:defmethod angle4-val ((m <mySer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exam-srv:angle4-val is deprecated.  Use exam-srv:angle4 instead.")
  (angle4 m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <mySer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exam-srv:time-val is deprecated.  Use exam-srv:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mySer-request>) ostream)
  "Serializes a message object of type '<mySer-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mySer-request>) istream)
  "Deserializes a message object of type '<mySer-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle3) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle4) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mySer-request>)))
  "Returns string type for a service object of type '<mySer-request>"
  "exam/mySerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mySer-request)))
  "Returns string type for a service object of type 'mySer-request"
  "exam/mySerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mySer-request>)))
  "Returns md5sum for a message object of type '<mySer-request>"
  "0d48ea28d372a544a46a655505887e00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mySer-request)))
  "Returns md5sum for a message object of type 'mySer-request"
  "0d48ea28d372a544a46a655505887e00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mySer-request>)))
  "Returns full string definition for message of type '<mySer-request>"
  (cl:format cl:nil "float64 angle1~%float64 angle2~%float64 angle3~%float64 angle4~%float64 time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mySer-request)))
  "Returns full string definition for message of type 'mySer-request"
  (cl:format cl:nil "float64 angle1~%float64 angle2~%float64 angle3~%float64 angle4~%float64 time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mySer-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mySer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'mySer-request
    (cl:cons ':angle1 (angle1 msg))
    (cl:cons ':angle2 (angle2 msg))
    (cl:cons ':angle3 (angle3 msg))
    (cl:cons ':angle4 (angle4 msg))
    (cl:cons ':time (time msg))
))
;//! \htmlinclude mySer-response.msg.html

(cl:defclass <mySer-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass mySer-response (<mySer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mySer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mySer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exam-srv:<mySer-response> is deprecated: use exam-srv:mySer-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <mySer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exam-srv:response-val is deprecated.  Use exam-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mySer-response>) ostream)
  "Serializes a message object of type '<mySer-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mySer-response>) istream)
  "Deserializes a message object of type '<mySer-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mySer-response>)))
  "Returns string type for a service object of type '<mySer-response>"
  "exam/mySerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mySer-response)))
  "Returns string type for a service object of type 'mySer-response"
  "exam/mySerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mySer-response>)))
  "Returns md5sum for a message object of type '<mySer-response>"
  "0d48ea28d372a544a46a655505887e00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mySer-response)))
  "Returns md5sum for a message object of type 'mySer-response"
  "0d48ea28d372a544a46a655505887e00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mySer-response>)))
  "Returns full string definition for message of type '<mySer-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mySer-response)))
  "Returns full string definition for message of type 'mySer-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mySer-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mySer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'mySer-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'mySer)))
  'mySer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'mySer)))
  'mySer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mySer)))
  "Returns string type for a service object of type '<mySer>"
  "exam/mySer")
; Auto-generated. Do not edit!


(cl:in-package assign-msg)


;//! \htmlinclude myMess.msg.html

(cl:defclass <myMess> (roslisp-msg-protocol:ros-message)
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
    :initform 0.0))
)

(cl:defclass myMess (<myMess>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <myMess>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'myMess)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assign-msg:<myMess> is deprecated: use assign-msg:myMess instead.")))

(cl:ensure-generic-function 'angle1-val :lambda-list '(m))
(cl:defmethod angle1-val ((m <myMess>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assign-msg:angle1-val is deprecated.  Use assign-msg:angle1 instead.")
  (angle1 m))

(cl:ensure-generic-function 'angle2-val :lambda-list '(m))
(cl:defmethod angle2-val ((m <myMess>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assign-msg:angle2-val is deprecated.  Use assign-msg:angle2 instead.")
  (angle2 m))

(cl:ensure-generic-function 'angle3-val :lambda-list '(m))
(cl:defmethod angle3-val ((m <myMess>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assign-msg:angle3-val is deprecated.  Use assign-msg:angle3 instead.")
  (angle3 m))

(cl:ensure-generic-function 'angle4-val :lambda-list '(m))
(cl:defmethod angle4-val ((m <myMess>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assign-msg:angle4-val is deprecated.  Use assign-msg:angle4 instead.")
  (angle4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <myMess>) ostream)
  "Serializes a message object of type '<myMess>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <myMess>) istream)
  "Deserializes a message object of type '<myMess>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle4) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<myMess>)))
  "Returns string type for a message object of type '<myMess>"
  "assign/myMess")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'myMess)))
  "Returns string type for a message object of type 'myMess"
  "assign/myMess")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<myMess>)))
  "Returns md5sum for a message object of type '<myMess>"
  "6dbee5393cf7cdd1b23eb5beb5d9c6de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'myMess)))
  "Returns md5sum for a message object of type 'myMess"
  "6dbee5393cf7cdd1b23eb5beb5d9c6de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<myMess>)))
  "Returns full string definition for message of type '<myMess>"
  (cl:format cl:nil "float32 angle1~%float32 angle2~%float32 angle3~%float32 angle4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'myMess)))
  "Returns full string definition for message of type 'myMess"
  (cl:format cl:nil "float32 angle1~%float32 angle2~%float32 angle3~%float32 angle4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <myMess>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <myMess>))
  "Converts a ROS message object to a list"
  (cl:list 'myMess
    (cl:cons ':angle1 (angle1 msg))
    (cl:cons ':angle2 (angle2 msg))
    (cl:cons ':angle3 (angle3 msg))
    (cl:cons ':angle4 (angle4 msg))
))

; Auto-generated. Do not edit!


(cl:in-package assign2-msg)


;//! \htmlinclude ourMsg.msg.html

(cl:defclass <ourMsg> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (fi
    :reader fi
    :initarg :fi
    :type cl:float
    :initform 0.0))
)

(cl:defclass ourMsg (<ourMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ourMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ourMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assign2-msg:<ourMsg> is deprecated: use assign2-msg:ourMsg instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <ourMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assign2-msg:x-val is deprecated.  Use assign2-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <ourMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assign2-msg:y-val is deprecated.  Use assign2-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <ourMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assign2-msg:z-val is deprecated.  Use assign2-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'fi-val :lambda-list '(m))
(cl:defmethod fi-val ((m <ourMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assign2-msg:fi-val is deprecated.  Use assign2-msg:fi instead.")
  (fi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ourMsg>) ostream)
  "Serializes a message object of type '<ourMsg>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ourMsg>) istream)
  "Deserializes a message object of type '<ourMsg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fi) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ourMsg>)))
  "Returns string type for a message object of type '<ourMsg>"
  "assign2/ourMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ourMsg)))
  "Returns string type for a message object of type 'ourMsg"
  "assign2/ourMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ourMsg>)))
  "Returns md5sum for a message object of type '<ourMsg>"
  "e7f9bc2b116f9a0efd4cf9e3a0c5a2a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ourMsg)))
  "Returns md5sum for a message object of type 'ourMsg"
  "e7f9bc2b116f9a0efd4cf9e3a0c5a2a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ourMsg>)))
  "Returns full string definition for message of type '<ourMsg>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%float32 fi~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ourMsg)))
  "Returns full string definition for message of type 'ourMsg"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%float32 fi~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ourMsg>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ourMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ourMsg
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':fi (fi msg))
))

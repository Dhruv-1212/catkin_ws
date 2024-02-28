; Auto-generated. Do not edit!


(cl:in-package cac-srv)


;//! \htmlinclude calc-request.msg.html

(cl:defclass <calc-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:float
    :initform 0.0)
   (b
    :reader b
    :initarg :b
    :type cl:float
    :initform 0.0))
)

(cl:defclass calc-request (<calc-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <calc-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'calc-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cac-srv:<calc-request> is deprecated: use cac-srv:calc-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <calc-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cac-srv:a-val is deprecated.  Use cac-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <calc-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cac-srv:b-val is deprecated.  Use cac-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <calc-request>) ostream)
  "Serializes a message object of type '<calc-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <calc-request>) istream)
  "Deserializes a message object of type '<calc-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'b) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<calc-request>)))
  "Returns string type for a service object of type '<calc-request>"
  "cac/calcRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'calc-request)))
  "Returns string type for a service object of type 'calc-request"
  "cac/calcRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<calc-request>)))
  "Returns md5sum for a message object of type '<calc-request>"
  "6e7c4f317ab6ba70dfa7c335adfdc1c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'calc-request)))
  "Returns md5sum for a message object of type 'calc-request"
  "6e7c4f317ab6ba70dfa7c335adfdc1c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<calc-request>)))
  "Returns full string definition for message of type '<calc-request>"
  (cl:format cl:nil "float64 a~%float64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'calc-request)))
  "Returns full string definition for message of type 'calc-request"
  (cl:format cl:nil "float64 a~%float64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <calc-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <calc-request>))
  "Converts a ROS message object to a list"
  (cl:list 'calc-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude calc-response.msg.html

(cl:defclass <calc-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:float
    :initform 0.0))
)

(cl:defclass calc-response (<calc-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <calc-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'calc-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cac-srv:<calc-response> is deprecated: use cac-srv:calc-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <calc-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cac-srv:result-val is deprecated.  Use cac-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <calc-response>) ostream)
  "Serializes a message object of type '<calc-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <calc-response>) istream)
  "Deserializes a message object of type '<calc-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'result) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<calc-response>)))
  "Returns string type for a service object of type '<calc-response>"
  "cac/calcResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'calc-response)))
  "Returns string type for a service object of type 'calc-response"
  "cac/calcResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<calc-response>)))
  "Returns md5sum for a message object of type '<calc-response>"
  "6e7c4f317ab6ba70dfa7c335adfdc1c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'calc-response)))
  "Returns md5sum for a message object of type 'calc-response"
  "6e7c4f317ab6ba70dfa7c335adfdc1c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<calc-response>)))
  "Returns full string definition for message of type '<calc-response>"
  (cl:format cl:nil "float64 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'calc-response)))
  "Returns full string definition for message of type 'calc-response"
  (cl:format cl:nil "float64 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <calc-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <calc-response>))
  "Converts a ROS message object to a list"
  (cl:list 'calc-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'calc)))
  'calc-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'calc)))
  'calc-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'calc)))
  "Returns string type for a service object of type '<calc>"
  "cac/calc")
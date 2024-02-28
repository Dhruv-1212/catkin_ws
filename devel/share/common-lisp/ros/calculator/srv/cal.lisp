; Auto-generated. Do not edit!


(cl:in-package calculator-srv)


;//! \htmlinclude cal-request.msg.html

(cl:defclass <cal-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:float
    :initform 0.0)
   (b
    :reader b
    :initarg :b
    :type cl:float
    :initform 0.0)
   (op
    :reader op
    :initarg :op
    :type cl:string
    :initform ""))
)

(cl:defclass cal-request (<cal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calculator-srv:<cal-request> is deprecated: use calculator-srv:cal-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <cal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calculator-srv:a-val is deprecated.  Use calculator-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <cal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calculator-srv:b-val is deprecated.  Use calculator-srv:b instead.")
  (b m))

(cl:ensure-generic-function 'op-val :lambda-list '(m))
(cl:defmethod op-val ((m <cal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calculator-srv:op-val is deprecated.  Use calculator-srv:op instead.")
  (op m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cal-request>) ostream)
  "Serializes a message object of type '<cal-request>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'op))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'op))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cal-request>) istream)
  "Deserializes a message object of type '<cal-request>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'op) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'op) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cal-request>)))
  "Returns string type for a service object of type '<cal-request>"
  "calculator/calRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cal-request)))
  "Returns string type for a service object of type 'cal-request"
  "calculator/calRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cal-request>)))
  "Returns md5sum for a message object of type '<cal-request>"
  "f44d590eccac8479acf5b93bee12375b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cal-request)))
  "Returns md5sum for a message object of type 'cal-request"
  "f44d590eccac8479acf5b93bee12375b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cal-request>)))
  "Returns full string definition for message of type '<cal-request>"
  (cl:format cl:nil "float64 a~%float64 b~%string op~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cal-request)))
  "Returns full string definition for message of type 'cal-request"
  (cl:format cl:nil "float64 a~%float64 b~%string op~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cal-request>))
  (cl:+ 0
     8
     8
     4 (cl:length (cl:slot-value msg 'op))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'cal-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
    (cl:cons ':op (op msg))
))
;//! \htmlinclude cal-response.msg.html

(cl:defclass <cal-response> (roslisp-msg-protocol:ros-message)
  ((ans
    :reader ans
    :initarg :ans
    :type cl:float
    :initform 0.0))
)

(cl:defclass cal-response (<cal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calculator-srv:<cal-response> is deprecated: use calculator-srv:cal-response instead.")))

(cl:ensure-generic-function 'ans-val :lambda-list '(m))
(cl:defmethod ans-val ((m <cal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calculator-srv:ans-val is deprecated.  Use calculator-srv:ans instead.")
  (ans m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cal-response>) ostream)
  "Serializes a message object of type '<cal-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ans))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cal-response>) istream)
  "Deserializes a message object of type '<cal-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ans) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cal-response>)))
  "Returns string type for a service object of type '<cal-response>"
  "calculator/calResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cal-response)))
  "Returns string type for a service object of type 'cal-response"
  "calculator/calResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cal-response>)))
  "Returns md5sum for a message object of type '<cal-response>"
  "f44d590eccac8479acf5b93bee12375b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cal-response)))
  "Returns md5sum for a message object of type 'cal-response"
  "f44d590eccac8479acf5b93bee12375b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cal-response>)))
  "Returns full string definition for message of type '<cal-response>"
  (cl:format cl:nil "float64 ans~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cal-response)))
  "Returns full string definition for message of type 'cal-response"
  (cl:format cl:nil "float64 ans~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cal-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'cal-response
    (cl:cons ':ans (ans msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'cal)))
  'cal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'cal)))
  'cal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cal)))
  "Returns string type for a service object of type '<cal>"
  "calculator/cal")
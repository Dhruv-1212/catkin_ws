;; Auto-generated. Do not edit!


(when (boundp 'exam::mySer)
  (if (not (find-package "EXAM"))
    (make-package "EXAM"))
  (shadow 'mySer (find-package "EXAM")))
(unless (find-package "EXAM::MYSER")
  (make-package "EXAM::MYSER"))
(unless (find-package "EXAM::MYSERREQUEST")
  (make-package "EXAM::MYSERREQUEST"))
(unless (find-package "EXAM::MYSERRESPONSE")
  (make-package "EXAM::MYSERRESPONSE"))

(in-package "ROS")





(defclass exam::mySerRequest
  :super ros::object
  :slots (_angle1 _angle2 _angle3 _angle4 _time ))

(defmethod exam::mySerRequest
  (:init
   (&key
    ((:angle1 __angle1) 0.0)
    ((:angle2 __angle2) 0.0)
    ((:angle3 __angle3) 0.0)
    ((:angle4 __angle4) 0.0)
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _angle1 (float __angle1))
   (setq _angle2 (float __angle2))
   (setq _angle3 (float __angle3))
   (setq _angle4 (float __angle4))
   (setq _time (float __time))
   self)
  (:angle1
   (&optional __angle1)
   (if __angle1 (setq _angle1 __angle1)) _angle1)
  (:angle2
   (&optional __angle2)
   (if __angle2 (setq _angle2 __angle2)) _angle2)
  (:angle3
   (&optional __angle3)
   (if __angle3 (setq _angle3 __angle3)) _angle3)
  (:angle4
   (&optional __angle4)
   (if __angle4 (setq _angle4 __angle4)) _angle4)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; float64 _angle1
    8
    ;; float64 _angle2
    8
    ;; float64 _angle3
    8
    ;; float64 _angle4
    8
    ;; float64 _time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _angle1
       (sys::poke _angle1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle2
       (sys::poke _angle2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle3
       (sys::poke _angle3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle4
       (sys::poke _angle4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _angle1
     (setq _angle1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle2
     (setq _angle2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle3
     (setq _angle3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle4
     (setq _angle4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass exam::mySerResponse
  :super ros::object
  :slots (_response ))

(defmethod exam::mySerResponse
  (:init
   (&key
    ((:response __response) nil)
    )
   (send-super :init)
   (setq _response __response)
   self)
  (:response
   (&optional (__response :null))
   (if (not (eq __response :null)) (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; bool _response
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _response
       (if _response (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _response
     (setq _response (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass exam::mySer
  :super ros::object
  :slots ())

(setf (get exam::mySer :md5sum-) "0d48ea28d372a544a46a655505887e00")
(setf (get exam::mySer :datatype-) "exam/mySer")
(setf (get exam::mySer :request) exam::mySerRequest)
(setf (get exam::mySer :response) exam::mySerResponse)

(defmethod exam::mySerRequest
  (:response () (instance exam::mySerResponse :init)))

(setf (get exam::mySerRequest :md5sum-) "0d48ea28d372a544a46a655505887e00")
(setf (get exam::mySerRequest :datatype-) "exam/mySerRequest")
(setf (get exam::mySerRequest :definition-)
      "float64 angle1
float64 angle2
float64 angle3
float64 angle4
float64 time
---
bool response

")

(setf (get exam::mySerResponse :md5sum-) "0d48ea28d372a544a46a655505887e00")
(setf (get exam::mySerResponse :datatype-) "exam/mySerResponse")
(setf (get exam::mySerResponse :definition-)
      "float64 angle1
float64 angle2
float64 angle3
float64 angle4
float64 time
---
bool response

")



(provide :exam/mySer "0d48ea28d372a544a46a655505887e00")



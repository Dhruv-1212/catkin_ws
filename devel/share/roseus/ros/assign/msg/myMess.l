;; Auto-generated. Do not edit!


(when (boundp 'assign::myMess)
  (if (not (find-package "ASSIGN"))
    (make-package "ASSIGN"))
  (shadow 'myMess (find-package "ASSIGN")))
(unless (find-package "ASSIGN::MYMESS")
  (make-package "ASSIGN::MYMESS"))

(in-package "ROS")
;;//! \htmlinclude myMess.msg.html


(defclass assign::myMess
  :super ros::object
  :slots (_angle1 _angle2 _angle3 _angle4 ))

(defmethod assign::myMess
  (:init
   (&key
    ((:angle1 __angle1) 0.0)
    ((:angle2 __angle2) 0.0)
    ((:angle3 __angle3) 0.0)
    ((:angle4 __angle4) 0.0)
    )
   (send-super :init)
   (setq _angle1 (float __angle1))
   (setq _angle2 (float __angle2))
   (setq _angle3 (float __angle3))
   (setq _angle4 (float __angle4))
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
  (:serialization-length
   ()
   (+
    ;; float32 _angle1
    4
    ;; float32 _angle2
    4
    ;; float32 _angle3
    4
    ;; float32 _angle4
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _angle1
       (sys::poke _angle1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle2
       (sys::poke _angle2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle3
       (sys::poke _angle3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle4
       (sys::poke _angle4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _angle1
     (setq _angle1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle2
     (setq _angle2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle3
     (setq _angle3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle4
     (setq _angle4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get assign::myMess :md5sum-) "6dbee5393cf7cdd1b23eb5beb5d9c6de")
(setf (get assign::myMess :datatype-) "assign/myMess")
(setf (get assign::myMess :definition-)
      "float32 angle1
float32 angle2
float32 angle3
float32 angle4

")



(provide :assign/myMess "6dbee5393cf7cdd1b23eb5beb5d9c6de")



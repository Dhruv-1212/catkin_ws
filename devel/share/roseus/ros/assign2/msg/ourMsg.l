;; Auto-generated. Do not edit!


(when (boundp 'assign2::ourMsg)
  (if (not (find-package "ASSIGN2"))
    (make-package "ASSIGN2"))
  (shadow 'ourMsg (find-package "ASSIGN2")))
(unless (find-package "ASSIGN2::OURMSG")
  (make-package "ASSIGN2::OURMSG"))

(in-package "ROS")
;;//! \htmlinclude ourMsg.msg.html


(defclass assign2::ourMsg
  :super ros::object
  :slots (_x _y _z _fi ))

(defmethod assign2::ourMsg
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:fi __fi) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _fi (float __fi))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:fi
   (&optional __fi)
   (if __fi (setq _fi __fi)) _fi)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _fi
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fi
       (sys::poke _fi (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fi
     (setq _fi (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get assign2::ourMsg :md5sum-) "e7f9bc2b116f9a0efd4cf9e3a0c5a2a0")
(setf (get assign2::ourMsg :datatype-) "assign2/ourMsg")
(setf (get assign2::ourMsg :definition-)
      "float32 x
float32 y
float32 z
float32 fi
")



(provide :assign2/ourMsg "e7f9bc2b116f9a0efd4cf9e3a0c5a2a0")



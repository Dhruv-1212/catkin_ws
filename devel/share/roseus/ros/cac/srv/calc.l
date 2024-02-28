;; Auto-generated. Do not edit!


(when (boundp 'cac::calc)
  (if (not (find-package "CAC"))
    (make-package "CAC"))
  (shadow 'calc (find-package "CAC")))
(unless (find-package "CAC::CALC")
  (make-package "CAC::CALC"))
(unless (find-package "CAC::CALCREQUEST")
  (make-package "CAC::CALCREQUEST"))
(unless (find-package "CAC::CALCRESPONSE")
  (make-package "CAC::CALCRESPONSE"))

(in-package "ROS")





(defclass cac::calcRequest
  :super ros::object
  :slots (_a _b ))

(defmethod cac::calcRequest
  (:init
   (&key
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    )
   (send-super :init)
   (setq _a (float __a))
   (setq _b (float __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; float64 _a
    8
    ;; float64 _b
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _a
       (sys::poke _a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _b
       (sys::poke _b (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _a
     (setq _a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _b
     (setq _b (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass cac::calcResponse
  :super ros::object
  :slots (_result ))

(defmethod cac::calcResponse
  (:init
   (&key
    ((:result __result) 0.0)
    )
   (send-super :init)
   (setq _result (float __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; float64 _result
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _result
       (sys::poke _result (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _result
     (setq _result (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass cac::calc
  :super ros::object
  :slots ())

(setf (get cac::calc :md5sum-) "6e7c4f317ab6ba70dfa7c335adfdc1c7")
(setf (get cac::calc :datatype-) "cac/calc")
(setf (get cac::calc :request) cac::calcRequest)
(setf (get cac::calc :response) cac::calcResponse)

(defmethod cac::calcRequest
  (:response () (instance cac::calcResponse :init)))

(setf (get cac::calcRequest :md5sum-) "6e7c4f317ab6ba70dfa7c335adfdc1c7")
(setf (get cac::calcRequest :datatype-) "cac/calcRequest")
(setf (get cac::calcRequest :definition-)
      "float64 a
float64 b
---
float64 result
")

(setf (get cac::calcResponse :md5sum-) "6e7c4f317ab6ba70dfa7c335adfdc1c7")
(setf (get cac::calcResponse :datatype-) "cac/calcResponse")
(setf (get cac::calcResponse :definition-)
      "float64 a
float64 b
---
float64 result
")



(provide :cac/calc "6e7c4f317ab6ba70dfa7c335adfdc1c7")



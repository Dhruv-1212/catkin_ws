;; Auto-generated. Do not edit!


(when (boundp 'calculator::cal)
  (if (not (find-package "CALCULATOR"))
    (make-package "CALCULATOR"))
  (shadow 'cal (find-package "CALCULATOR")))
(unless (find-package "CALCULATOR::CAL")
  (make-package "CALCULATOR::CAL"))
(unless (find-package "CALCULATOR::CALREQUEST")
  (make-package "CALCULATOR::CALREQUEST"))
(unless (find-package "CALCULATOR::CALRESPONSE")
  (make-package "CALCULATOR::CALRESPONSE"))

(in-package "ROS")





(defclass calculator::calRequest
  :super ros::object
  :slots (_a _b _op ))

(defmethod calculator::calRequest
  (:init
   (&key
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    ((:op __op) "")
    )
   (send-super :init)
   (setq _a (float __a))
   (setq _b (float __b))
   (setq _op (string __op))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:op
   (&optional __op)
   (if __op (setq _op __op)) _op)
  (:serialization-length
   ()
   (+
    ;; float64 _a
    8
    ;; float64 _b
    8
    ;; string _op
    4 (length _op)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _a
       (sys::poke _a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _b
       (sys::poke _b (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _op
       (write-long (length _op) s) (princ _op s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _a
     (setq _a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _b
     (setq _b (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _op
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _op (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass calculator::calResponse
  :super ros::object
  :slots (_ans ))

(defmethod calculator::calResponse
  (:init
   (&key
    ((:ans __ans) 0.0)
    )
   (send-super :init)
   (setq _ans (float __ans))
   self)
  (:ans
   (&optional __ans)
   (if __ans (setq _ans __ans)) _ans)
  (:serialization-length
   ()
   (+
    ;; float64 _ans
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _ans
       (sys::poke _ans (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _ans
     (setq _ans (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass calculator::cal
  :super ros::object
  :slots ())

(setf (get calculator::cal :md5sum-) "f44d590eccac8479acf5b93bee12375b")
(setf (get calculator::cal :datatype-) "calculator/cal")
(setf (get calculator::cal :request) calculator::calRequest)
(setf (get calculator::cal :response) calculator::calResponse)

(defmethod calculator::calRequest
  (:response () (instance calculator::calResponse :init)))

(setf (get calculator::calRequest :md5sum-) "f44d590eccac8479acf5b93bee12375b")
(setf (get calculator::calRequest :datatype-) "calculator/calRequest")
(setf (get calculator::calRequest :definition-)
      "float64 a
float64 b
string op
---
float64 ans
")

(setf (get calculator::calResponse :md5sum-) "f44d590eccac8479acf5b93bee12375b")
(setf (get calculator::calResponse :datatype-) "calculator/calResponse")
(setf (get calculator::calResponse :definition-)
      "float64 a
float64 b
string op
---
float64 ans
")



(provide :calculator/cal "f44d590eccac8479acf5b93bee12375b")



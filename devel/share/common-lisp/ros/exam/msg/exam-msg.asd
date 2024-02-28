
(cl:in-package :asdf)

(defsystem "exam-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "myMess" :depends-on ("_package_myMess"))
    (:file "_package_myMess" :depends-on ("_package"))
  ))
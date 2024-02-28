
(cl:in-package :asdf)

(defsystem "exam-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "mySer" :depends-on ("_package_mySer"))
    (:file "_package_mySer" :depends-on ("_package"))
  ))
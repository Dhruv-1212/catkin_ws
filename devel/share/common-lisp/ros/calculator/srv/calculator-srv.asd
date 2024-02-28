
(cl:in-package :asdf)

(defsystem "calculator-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "cal" :depends-on ("_package_cal"))
    (:file "_package_cal" :depends-on ("_package"))
  ))
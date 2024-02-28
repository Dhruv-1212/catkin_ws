
(cl:in-package :asdf)

(defsystem "cac-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "calc" :depends-on ("_package_calc"))
    (:file "_package_calc" :depends-on ("_package"))
  ))
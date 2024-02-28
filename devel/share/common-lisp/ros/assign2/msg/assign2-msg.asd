
(cl:in-package :asdf)

(defsystem "assign2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ourMsg" :depends-on ("_package_ourMsg"))
    (:file "_package_ourMsg" :depends-on ("_package"))
  ))
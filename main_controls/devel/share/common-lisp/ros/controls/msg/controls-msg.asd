
(cl:in-package :asdf)

(defsystem "controls-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "encoder_msg" :depends-on ("_package_encoder_msg"))
    (:file "_package_encoder_msg" :depends-on ("_package"))
  ))
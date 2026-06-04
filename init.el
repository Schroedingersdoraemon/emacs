(setq custom-file
      (locate-user-emacs-file "custom.el"))
(load custom-file t)

(add-to-list 'load-path
             (locate-user-emacs-file "lisp"))


(require 'init-package)



(require 'init-lang)

(require 'init-ui)

(require 'init-comp)

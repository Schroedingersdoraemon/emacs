;;; init-package.el

(require 'package)

(setq package-archives
      '(("gnu"    . "https://mirrors.bfsu.edu.cn/elpa/gnu/")
        ("nongnu" . "https://mirrors.bfsu.edu.cn/elpa/nongnu/")
        ("melpa"  . "https://mirrors.bfsu.edu.cn/elpa/melpa/")))

(package-initialize) ;; You might already have this line

(setq package-archive-priorities
      '(("gnu" . 30)
        ("nongnu" . 20)
        ("melpa" . 10)))

(setq package-enable-at-startup nil)

(require 'use-package)



(setq use-package-always-ensure t)

(provide 'init-package)

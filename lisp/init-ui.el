(set-face-attribute
 'default nil
 :family "Noto Sans Mono"
 :height 150)

;; (menu-bar-mode -1)
;; (tool-bar-mode -1)
;; (scroll-bar-mode -1)

(setq scroll-margin 3)

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)

(setq make-backup-files nil)
(setq auto-save-default nil)

(use-package treemacs
  :defer t
  :bind
  (("C-x C-d" . treemacs))
  :config
  (treemacs-follow-mode t)
  (treemacs-project-follow-mode t)
  (treemacs-resize-icons 20))

(provide 'init-ui)

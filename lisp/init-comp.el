(use-package which-key
  :config
  (setq which-key-idle-delay 0.3)
  (which-key-mode))

(use-package eldoc-box)

(use-package corfu
  :init
  (global-corfu-mode)
  :custom
  (corfu-auto t)
  (corfu-on-exact-match nil)
  (corfu-popupinfo-mode t)
  (corfu-popupinfo-delay '(0.3 . 0.1))
  (corfu-cycle t))


(use-package cape
  :init
  (add-to-list 'completion-at-point-functions
               #'cape-file))

(use-package vertico
  :init
  (vertico-mode)
  :custom
  (vertico-cycle t))

;; Optionally use the `orderless' completion style.
(use-package orderless
  :custom
  ;; Configure a custom style dispatcher (see the Consult wiki)
  ;; (orderless-style-dispatchers '(+orderless-consult-dispatch orderless-affix-dispatch))
  ;; (orderless-component-separator #'orderless-escapable-split-on-space)
  (completion-styles '(orderless flex basic))
  (completion-category-overrides '((file (styles partial-completion))))
  (completion-category-defaults nil) ;; Disable defaults, use our settings
  (completion-pcm-leading-wildcard t)) ;; Emacs 31: partial-completion behaves like substring

;; Enable rich annotations using the Marginalia package
(use-package marginalia
  ;; Bind `marginalia-cycle' locally in the minibuffer.  To make the binding
  ;; available in the *Completions* buffer, add it to the
  ;; `completion-list-mode-map'.
;;  :bind (:map minibuffer-local-map
;;         ("M-A" . marginalia-cycle))

  ;; The :init section is always executed.
  :init

  ;; Marginalia must be activated in the :init section of use-package such that
  ;; the mode gets enabled right away. Note that this forces loading the
  ;; package.
  (marginalia-mode))

(use-package consult
  :bind (
	 ;;	 "C-x b" . consult-buffer
	 ("C-x b" . consult-buffer)
	 ("C-x C-l" . consult-line)
	 
	 ("M-g M-g" . consult-goto-line)
	 ("M-g i" . consult-imenu)
	 )
  :init
  )

















(provide 'init-comp)

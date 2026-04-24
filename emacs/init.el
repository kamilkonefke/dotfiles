(package-initialize)

(setq custom-file "~/.emacs.d/custom.el"
      make-backup-files nil
      create-lockfiles nil
      gc-cons-threshold (* 100 1024 1024)
      display-line-numbers-grow-only t
      display-line-numbers-width-start t
      scroll-conservatively 10
      scroll-margin 15)

(setq-default truncate-lines t
              indent-tabs-mode nil)

(defalias 'yes-or-no-p 'y-or-n-p)

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(show-paren-mode 1)
(electric-indent-mode 1)

(add-to-list 'default-frame-alist `(font . "Agave 22"))
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

; packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(use-package multiple-cursors
  :ensure t
  :bind (("C-S-c C-S-c" . mc/edit-lines)
         ("C->" . mc/mark-next-like-this)
         ("C-<" . mc/mark-previous-like-this)
         ("C-c C-<" . mc/mark-all-like-this)
         ("C-\"" . mc/skip-to-next-like-this)
         ("C-:" . mc/skip-to-previous-like-this)))

(use-package corfu
  :ensure t
  :init
  (global-corfu-mode))

(use-package vertico
  :ensure t
  :init (vertico-mode))

(use-package orderless
  :ensure t
  :init
  (setq completion-styles '(orderless basic)))

(use-package marginalia
  :ensure t
  :bind (:map minibuffer-local-map
         ("M-A" . marginalia-cycle))
  :init
  (marginalia-mode))

(use-package magit
  :ensure t)

; major modes
(add-to-list 'load-path (expand-file-name "~/.emacs.d/modes"))

(use-package simpc-mode
  :mode ("\\.[hc]\\(pp\\)?$" . simpc-mode))

(use-package odin-mode
  :mode "\\.odin$")

(use-package web-mode
  :mode ("\\.html?$" . web-mode))

(use-package rust-mode
  :ensure t
  :mode "\\.rs$")

(load-file custom-file)

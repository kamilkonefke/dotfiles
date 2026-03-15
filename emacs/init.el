(package-initialize)

(setq custom-file "~/.emacs.d/custom.el"
      make-backup-files nil
      create-lockfiles nil
      gc-cons-threshold (* 100 1024 1024)
      display-line-numbers-grow-only t
      display-line-numbers-width-start t)

(setq-default truncate-lines t
              indent-tabs-mode nil)

(defalias 'yes-or-no-p 'y-or-n-p)

(ido-mode 1)
(ido-everywhere 1)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(show-paren-mode 1)
(electric-indent-mode 1)
(global-display-line-numbers-mode)

(add-to-list 'default-frame-alist `(font . "Iosevka-22"))
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

; packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->")         'mc/mark-next-like-this)
(global-set-key (kbd "C-<")         'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<")     'mc/mark-all-like-this)
(global-set-key (kbd "C-\"")        'mc/skip-to-next-like-this)
(global-set-key (kbd "C-:")         'mc/skip-to-previous-like-this)

(require 'move-text)
(global-set-key (kbd "M-p") 'move-text-up)
(global-set-key (kbd "M-n") 'move-text-down)

(require 'smex)
(global-set-key (kbd "M-x") 'smex)

; modes
(add-to-list 'load-path  "~/.emacs.d/modes")

(require 'simpc-mode)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))

(require 'odin-mode)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(load-file custom-file)

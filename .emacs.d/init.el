;; .emacs.d/init.el

;; --------------------------------------

(require 'package)

(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    ein
    elpy
    flycheck
    material-theme
    py-autopep8))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

(load-theme 'material t)

;; ;; enable visual feedback on selections
(setq transient-mark-mode t)


;; make switch buffers give me list of available buffers
(ido-mode 1)

;; inhibit welcome screen
(setq inhibit-startup-screen t)

;; multiple cursors
;; http://melpa.org/#/multiple-cursors
;; may need to manually install
;; M-x install-packages multiple-cursors
;; or
;; M-x list-packages
;; search for multiple-cursors and click to install
;;(require 'multiple-cursors)

;; keybindings

;; multiple cursors
;; add cursor to all lines in selected region
(global-set-key (kbd "C-c C-m") 'mc/edit-lines)

;; add cursors based on keywords
(global-set-key (kbd "C-c >") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c <") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-a") 'mc/mark-all-like-this)


;;show line numbers everywhere
;;global-linum-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

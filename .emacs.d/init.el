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
(elpy-enable)

;; use flycheck not flymake with elpy
;;(when (require 'flycheck nil t)
;;  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
;;  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; enable autopep8 on save
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;; ;; enable visual feedback on selections
(setq transient-mark-mode t)

;; ;; default to unified diffs
(setq diff-switches "-u")

;; ;; always end a file with a newline
;;(setq require-final-newline 'query)

;; Don't start emacs at the default screen
(setq inhibit-startup-screen t)

;; start emacs at the shell terminal emulator
(switch-to-buffer (get-buffer-create (shell)))

;; make switch buffers give me list of available buffers
(ido-mode 1)

;; keybindings
;(global-set-key (kbd "<f1>") 'find-file)
;(global-set-key (kbd "<f2>") 'save-buffer)
;(global-set-key (kbd "S-<f2>") 'write-file)
;(global-set-key (kbd "<f3>") 'kill-buffer)

;; Increase the default text size
(set-face-attribute 'default nil :height 130)

;; show line numbers everywhere
;;(global-linum-mode t)

;; cuspish colors
;;(set-face-background 'default "white smoke")
;;(set-face-foreground 'default "gray25")
;;(set-face-foreground 'font-lock-comment-face "DarkOrange3")
;;(set-face-foreground 'font-lock-string-face "RoyalBlue1")
;;(set-face-foreground 'font-lock-function-name-face "black")
;;(set-face-foreground 'font-lock-keyword-face "green4")
;;(set-face-foreground 'font-lock-builtin-face "Red")



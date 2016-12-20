;; ;; .emacs

;; ;;; uncomment this line to disable loading of "default.el" at startup
;; ;;;(setq inhibit-default-init t)

;; ;; enable visual feedback on selections
(setq transient-mark-mode t)

;; ;; default to better frame titles
;; (setq frame-title-format
;;       (concat  "%b - emacs@" (system-name)))

;; ;; default to unified diffs
(setq diff-switches "-u")

;; ;; always end a file with a newline
(setq require-final-newline 'query)

;;; uncomment for CJK utf-8 support for non-Asian users
;; (require 'un-define)
;;
;; Ben's stuff
;;
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
(global-linum-mode t)

;; cuspish colors
(set-face-background 'default "white smoke")
(set-face-foreground 'default "gray25")
(set-face-foreground 'font-lock-comment-face "DarkOrange3")
(set-face-foreground 'font-lock-string-face "RoyalBlue1")
(set-face-foreground 'font-lock-function-name-face "black")
(set-face-foreground 'font-lock-keyword-face "green4")
(set-face-foreground 'font-lock-builtin-face "Red")


; python setup
(setq python-python-command "/opt/rh/anaconda/root/envs/PUI2016_Python2/bin/python")

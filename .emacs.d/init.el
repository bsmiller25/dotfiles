;; .emacs.d/init.el

;; --------------------------------------

(setq inhibit-startup-screen t)

(require 'package)

(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

;; M-x package-refresh-contents RET

(defvar myPackages
  '(better-defaults
    elpy
    flycheck
    py-autopep8
    web-mode
    ))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)


;; enable elpy
(elpy-enable)

;; auto pep8
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
(setq py-autopep8-options '("--max-line-length=79"))

;; flycheck
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))


;; ;; enable visual feedback on selections
(setq transient-mark-mode t)


;; make switch buffers give me list of available buffers
(ido-mode 1)

;; fix html indentation
(add-hook 'html-mode-hook
	  (lambda ()
	    ;; Default indentation is usually 2 spaces, changing to 4.
	    (set (make-local-variable 'sgml-basic-offset) 4)))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (material-theme elpy better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(setq web-mode-engines-alist
      '(("django"    .  "\\.html\\'"))
      )

(set-face-attribute 'default            nil :background "grey14" :foreground "ivory1")
(set-face-attribute 'fringe             nil :background "grey20")
(set-face-attribute 'highlight          nil :background "grey16")
(set-face-attribute 'mode-line          nil :box nil :background "grey26" :foreground "grey50")
(set-face-attribute 'mode-line-inactive nil :background "grey40")

(set-face-attribute 'web-mode-html-tag-face          nil :foreground "#777777")
(set-face-attribute 'web-mode-html-tag-custom-face   nil :foreground "#8a9db4")
(set-face-attribute 'web-mode-html-tag-bracket-face  nil :foreground "#aaaaaa")
(set-face-attribute 'web-mode-html-attr-name-face    nil :foreground "#aaaaaa")
(set-face-attribute 'web-mode-html-attr-equal-face   nil :foreground "#eeeeee")
(set-face-attribute 'web-mode-html-attr-value-face   nil :foreground "RosyBrown")
(set-face-attribute 'web-mode-html-attr-custom-face  nil :foreground "#8a9db4")
(set-face-attribute 'web-mode-html-attr-engine-face  nil :foreground "#00f5ff")
(set-face-attribute 'web-mode-comment-face           nil :foreground "Firebrick")
(set-face-attribute 'web-mode-constant-face          nil :foreground "aquamarine")
(set-face-attribute 'web-mode-css-at-rule-face       nil :foreground "plum4")
(set-face-attribute 'web-mode-css-selector-face      nil :foreground "orchid3")
(set-face-attribute 'web-mode-css-pseudo-class-face  nil :foreground "plum2")
(set-face-attribute 'web-mode-css-property-name-face nil :foreground "Pink3")
(set-face-attribute 'web-mode-preprocessor-face      nil :foreground "DarkSeaGreen")
(set-face-attribute 'web-mode-block-delimiter-face   nil :foreground "DarkSeaGreen")
(set-face-attribute 'web-mode-block-control-face     nil :foreground "SeaGreen")
(set-face-attribute 'web-mode-variable-name-face     nil :foreground "Burlywood")

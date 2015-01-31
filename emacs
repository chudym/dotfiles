(global-linum-mode 1) ; display line numbers in margin
(column-number-mode 1) ; cursor position showing up in status bar
(global-visual-line-mode 1) ; lines soft-wrapping
					;(setq-default tab-width 4) ; emacs 23.1, 24.2, default to 8
; indentation
(setq-default c-basic-offset 4 c-default-style "linux")
(setq-default tab-width 4 indent-tabs-mode t)

;; turn on automatic bracket insertion by pairs. New in emacs 24
(electric-pair-mode 1)
(electric-indent-mode 1)

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
  )

(require 'iedit)
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(defun my:ac-c-header-init()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '"/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include")
)
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)

(require 'yasnippet)
(yas-global-mode 1)

; CEDET
(semantic-mode 1)
;(semantic-add-system-include "~/linux/include")
;(defun my:add-semantic-to-autocomplete()
;  (add-to-list 'ac-sources 'ac-source-semantic)
;)
;(add-hook 'c-mode-common-hook 'my:add-semantic-to-autocomplete)

;(require 'company)
;(add-hook 'after-init-hook 'global-company-mode)
;(require 'company-c-headers)
;(add-to-list 'company-backends 'company-c-headers)
;(setq company-backends (delete 'company-semantic company-backends))
;(define-key c-mode-map  [(tab)] 'company-complete)
;(define-key c++-mode-map  [(tab)] 'company-complete)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#000000" "#8b0000" "#00ff00" "#ffa500" "#7b68ee" "#dc8cc3" "#93e0e3" "#dcdccc"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
	("64581032564feda2b5f2cf389018b4b9906d98293d84d84142d90d7986032d33" "398ba5fd3af613843cf97bd189a4bbfe8491ec655351d0c62e18083398f26f23" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "31a01668c84d03862a970c471edbd377b2430868eccf5e8a9aec6831f1a0908d" "1297a022df4228b81bc0436230f211bad168a117282c20ddcba2db8c6a200743" "f0a99f53cbf7b004ba0c1760aa14fd70f2eabafe4e62a2b3cf5cabae8203113b" default)))
 '(fci-rule-color "#383838")
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(package-initialize)
(elpy-enable)

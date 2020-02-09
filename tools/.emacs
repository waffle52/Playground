(global-linum-mode t)
(setq linum-format "%3d\u2502")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(setq c-default-style "bsd"
      c-basic-offset 8
      tab-width 8
      indent-tabs-mode t)
(require 'whitespace)
(setq whitespace-style '(face empty lines-tail trailing))
;Clear the eshell buffer.
(defun eshell/clear ()
   (let ((eshell-buffer-maximum-lines 0)) (eshell-truncate-buffer)))
(global-whitespace-mode t)
(setq column-number-mode t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("837f2d1e6038d05f29bbcc0dc39dbbc51e5c9a079e8ecd3b6ef09fc0b149ceb1" default)))
 '(xterm-mouse-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(package-initialize)
(load-theme 'monokai)
(add-hook 'sh-mode-hook 'flycheck-mode)
(add-hook 'python-mode-hook
  (lambda () (setq python-indent-offset 4)))
(require 'package)
(add-to-list 'package-archives
'("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

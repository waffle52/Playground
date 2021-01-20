(global-linum-mode t)
(setq linum-format "%3d\u2502")
(setq c-default-style "bsd"
      c-basic-offset 8
      tab-width 8
      indent-tabs-mode t)
(require 'whitespace)
(require 'mouse)
(xterm-mouse-mode t)
(load-file "/Users/kyle/.emacs.d/tools/docker.lsp")

; (setq compile-command "docker exec c-test /bin/sh -c \"cd /data;python3.4 ./main_0.py\"")
(defun docker-compile (container) (interactive "sEnter container name: ")
(compile (format "docker exec %s /bin/sh -c \"cd /data;make\"" container))
)

; (defun rawr () (interactive) (message "XDDD"))

(defun track-mouse (e))
(setq mouse-sel-mode t)
(setq whitespace-style '(face empty lines-tail trailing))
(global-set-key [mouse-4] 'scroll-down-line)
(global-set-key [mouse-5] 'scroll-up-line)
;Clear the eshell buffer.
(defun eshell/clear ()
  "Clear the eshell buffer."
  (let ((inhibit-read-only t))
    (erase-buffer)
    (eshell-send-input)))
(global-whitespace-mode t)
(setq column-number-mode t)
(package-initialize)
(add-hook 'sh-mode-hook 'flycheck-mode)
(add-hook 'python-mode-hook
  (lambda () (setq python-indent-offset 4)))
(require 'package)
(add-to-list 'package-archives
'("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("837f2d1e6038d05f29bbcc0dc39dbbc51e5c9a079e8ecd3b6ef09fc0b149ceb1" "4c1204ec08e9fa5f55407cb7d181e8649b59c0b1db0ae3195fe078340f6e54d4" default)))
 '(package-selected-packages (quote (bart-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; sample code for setting a background color depending on file name extension

(defun my-set-theme-on-mode ()
  "set background color depending on file suffix"
  (interactive)
  (let ((fileNameSuffix (file-name-extension (buffer-file-name) ) ))
    (cond
     ((string= fileNameSuffix "c" ) (load-theme 'monokai))
     )
    ))

(add-hook 'find-file-hook 'my-set-theme-on-mode)
(put 'upcase-region 'disabled nil)

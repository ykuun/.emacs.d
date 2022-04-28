;; -*- coding: gb18030 -*-

(message "Hello Emacs by ykdu BEGIN")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(global-font-lock-mode t)
 '(global-linum-mode nil)
 '(package-selected-packages
   '(company-statistics keychain-environment company-lua company flycheck gnu-elpa-keyring-update csharp-mode eldoc lua-mode lsp-ivy lsp-mode monokai-theme ivy-explorer ivy-omni-org counsel-projectile counsel ivy elf-mode pdf-tools ob-async expand-region yasnippet projectile-ripgrep projectile glsl-mode cnfonts pyim edit-server cmake-mode magit markdown-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'package)
(setq package-check-signature nil)

(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; use domestic source
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
						 ("org"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))
(package-initialize)


(when (eq system-type 'windows-nt)
  (org-babel-load-file
   (expand-file-name "org/misc_win.org"
					 user-emacs-directory))
  )
(when (eq system-type 'darwin)
  (org-babel-load-file
   (expand-file-name "org/misc_darwin.org"
					 user-emacs-directory))
  )
(org-babel-load-file
 (expand-file-name "org/misc.org"
				   user-emacs-directory)
 )

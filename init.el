;; -*- coding: gb18030 -*-

(message "Hello Emacs by ykdu BEGIN")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("13a8eaddb003fd0d561096e11e1a91b029d3c9d64554f8e897b2513dbf14b277" default))
 '(global-font-lock-mode t)
 '(global-linum-mode nil)
 '(gnutls-algorithm-priority "normal:-vers-tls1.3" t)
 '(org-agenda-files '("d:/workspace/NotesDoMatter/Plans/WeeklyToDo.org"))
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
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
		    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
  Your version of Emacs does not support SSL connections,
  which is unsafe because it allows man-in-the-middle attacks.
  There are two things you can do about this warning:
  1. Install an Emacs version that does support SSL and be safe.
  2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))

(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(package-initialize)
;; use domestic source
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			 ("melpa" . "http://elpa.emacs-china.org/melpa/")))

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

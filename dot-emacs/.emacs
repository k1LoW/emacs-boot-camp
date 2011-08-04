;;load-path
(setq load-path
      (append
       (list
        (expand-file-name "~/.emacs.d/elisp/")
        (expand-file-name "~/.emacs.d/conf/"))
       load-path))

;; auto-install
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/elisp/")
(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup)

;; init-loader
(require 'init-loader)
(init-loader-load "~/.emacs.d/conf")
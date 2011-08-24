;;auto-complete
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(require 'auto-complete-config)
(global-auto-complete-mode t)

(setq-default ac-sources '(ac-source-words-in-same-mode-buffers
                           ac-source-yasnippet
                           ac-source-gtags
                           ac-source-filename
                           ac-source-dictionary))
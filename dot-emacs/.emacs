;;load-path
(setq load-path
      (append
       (list
        (expand-file-name "~/.emacs.d/elisp/")
        (expand-file-name "~/.emacs.d/conf/"))
       load-path))
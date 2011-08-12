(require 'anything-config)
(require 'anything-match-plugin)
(require 'anything-show-completion)

(defun anything-main ()
  "my main anything-command"
  (interactive)
  (anything-other-buffer
   (list anything-c-source-buffers+
         anything-c-source-recentf
         anything-c-source-files-in-current-dir+)
   "*anything*"))































(require 'sequential-command)

(define-sequential-command seq-home
  back-to-indentation  beginning-of-line beginning-of-buffer seq-return)

(define-sequential-command seq-end
  end-of-line end-of-buffer seq-return)
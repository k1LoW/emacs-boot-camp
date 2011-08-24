;; sense-region
(require 'sense-region)

(defadvice set-mark-command (around sense-region-set-mark-23 activate)
  (if (and (mell-transient-region-active-p)
           sense-region-mode)
      (copy-face 'region 'sense-region-region-face))
  ad-do-it)

(sense-region-on)

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


;;; anything-c-moccur
(require 'color-moccur)
(require 'anything-c-moccur)

(setq moccur-split-word t)
;; 複数の検索語や、特定のフェイスのみマッチ等の機能を有効にする
;; 詳細は http://www.bookshelf.jp/soft/meadow_50.html#SEC751
(setq moccur-split-word t)
;; migemoがrequireできる環境ならmigemoを使う
(when (require 'migemo nil t)
  (setq moccur-use-migemo t))

;; カスタマイズ可能変数の設定(M-x customize-group anything-c-moccur でも設定可能)
(setq anything-c-moccur-anything-idle-delay 0.2   ; `anything-idle-delay'
      anything-c-moccur-higligt-info-line-flag t  ; `anything-c-moccur-dmoccur'などのコマンドでバッファの情報をハイライトする
      anything-c-moccur-enable-auto-look-flag t   ; 現在選択中の候補の位置を他のwindowに表示する
      anything-c-moccur-enable-initial-pattern t) ; `anything-c-moccur-occur-by-moccur'の起動時にポイントの位置の単語を初期パターンにする


;;; anything-find-project-resources
(require 'anything-find-project-resources)
(add-to-list 'anything-find-resource--project-root-files "tags")


;;; anything-exuberant-ctags
(require 'anything-exuberant-ctags)
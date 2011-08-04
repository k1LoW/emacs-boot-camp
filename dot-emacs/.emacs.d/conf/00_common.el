(set-language-environment "Japanese")

(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

;;自動カラー設定
(require 'font-lock)
(global-font-lock-mode t)

;;対応する括弧をハイライト表示させる
(setq scroll-conservatively 1)
(show-paren-mode 1)

;;行番号を表示
(line-number-mode 1)
;;列番号を表示
(column-number-mode 1)
;;メニューバーを非表示
(menu-bar-mode -1)

;;C-vなどでページ移動があってもカーソル位置を変化させない
(setq scroll-preserve-screen-position t)

;;選択範囲に色がつくように変更
(transient-mark-mode t)

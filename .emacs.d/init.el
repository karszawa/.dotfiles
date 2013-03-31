;;;;;;;;;;;;;;;;;;;;;;;;
;; TODO
;;;;;;;;;;;;;;;;;;;;;;;;
;; - 行表示
;; * 行ハイライト
;; - junkファイル
;; * color-theme決定
;; - mode-line編集
;; - ruby-mode
;; - C++-mode
;; * 上部Toolbarを消す


;;;;;;;;;;;;;;;;;;;;;;;;
;; LOADPATH
;;;;;;;;;;;;;;;;;;;;;;;;
(setq load-path (cons "~/.dotfiles/.emacs.d/elisp" load-path))
(setq custom-theme-directory "~/.dotfiles/.emacs.d/color")
(require 'auto-save-buffers)


;;;;;;;;;;;;;;;;;;;;;;;;
;; KEYBIND
;;;;;;;;;;;;;;;;;;;;;;;;

;; Ctrl+hでバッグスペース
(global-set-key "\C-h" 'delete-backward-char)

;; Ctrl+x, Ctrl+gでGoto line
(global-set-key "\C-x\C-g" 'goto-line)


;;;;;;;;;;;;;;;;;;;;;;;;
;; GENERAL
;;;;;;;;;;;;;;;;;;;;;;;;

;; color
(load-theme 'molokai t)
(enable-theme 'molokai)

;; 現在行をハイライト
(global-hl-line-mode t)
(defface my-hl-line-face
  '((((class color) (background dark))
     (:background "gray18" t))
    (((class color) (background light))
     (:background "gray18" t))
    (t (:bold t)))
  "hl-line's my face")
(setq hl-line-face 'my-hl-line-face)

;; 自動保存
(run-with-idle-timer 0.5 t 'auto-save-buffers)

;; タブ幅設定
(setq-default tab-width 2)
(setq default-tab-width 2)
(setq tab-stop-list '(2 4 6 8 10 12 14 16 18 20 22 24 26 28 30
                      32 34 36 38 40 42 44 46 48 50 52 54 56 58 60
		      62 64 66 68 70 72 74 76 78 80 82 84 86 88 90
		      92 94 96 98 100 102 104 106 108 110 112 114 116 118 120))

;; *~系のバッグアップファイルを作らない
(setq make-backup-files nil)

;; #*#系のバッグアップファイルを作らない
(setq auto-save-default nil)

;; ファイル選択で大文字と小文字を区別しない
;; http://shibayu36.hatenablog.com/entry/2012/12/29/001418
(setq completion-ignore-case t)

;; バッファを自動で再読み込み
;; http://shibayu36.hatenablog.com/entry/2012/12/29/001418
(global-auto-revert-mode 1)

;; 上部メニューバーを非表示
(menu-bar-mode -1)

;; ツールバーを非表示
;; (tool-bar-mode -1)

;; スクロールバーを非表示
;; (toggle-scroll-bar nil)

;; 起動時画面を消す
(setq inhibit-startup-message t)

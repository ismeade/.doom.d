;;; ~/.doom.d/+ui.el -*- lexical-binding: t; -*-

(set-face-attribute
 'default nil
 :font (font-spec :name "-PfEd-DejaVu Sans Mono-bold-normal-normal-*-*-*-*-*-m-0-iso10646-1"
                  :weight 'normal
                  :slant 'normal
                  :size 10.0))
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font
     (frame-parameter nil 'font)
     charset
     (font-spec :name "-WQYF-文泉驿等宽微米黑-normal-normal-normal-*-*-*-*-*-*-0-iso10646-1"
                :weight 'normal
                :slant 'normal
                :size 12.0)))

;; 启动最大化
(add-to-list 'default-frame-alist '(fullscreen . maximized))


(linum-relative-global-mode t)

;; 设置主题
(load-theme 'gruvbox-dark-soft t)

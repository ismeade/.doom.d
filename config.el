;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

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

;; org标题字体取消加粗
(after! org
  (dolist (face '(org-level-1
                  org-level-2 org-level-3
                  org-level-4 org-level-5
                  org-level-6 org-level-7
                  org-level-8))
    (set-face-attribute face nil :weight 'normal))
  )

(linum-relative-global-mode t)

(add-hook 'before-save-hook 'gofmt-before-save)

;;(exec-path-from-shell-copy-env "GOPATH")
;;(exec-path-from-shell-copy-env "GOROOT")
;;(exec-path-from-shell-copy-env "GOBIN")
(exec-path-from-shell-copy-env "PATH")

;;; ~/.doom.d/+term.el -*- lexical-binding: t; -*-


(defun open-term()
  (interactive)
  (switch-to-buffer-other-window "*terminal*") ;; 打开新buffer
  (erase-buffer) ;; 先清空原有的内容
  (term "zsh") ;; 运行hellp函数
  ;; (other-window 1) ;; 鼠标焦点移动回1
   )


(defun open-json()
  (interactive)
  ;;(evil-yank)
  (switch-to-buffer-other-window "*json*") ;; 打开新buffer
  (erase-buffer) ;; 先清空原有的内容
  ;;(evil-paste-after)
  (json-mode)
  ;;(json-mode-beautify)
  ;; (other-window 1) ;; 鼠标焦点移动回1
   )

;; 使用dired快速打开gtd文件夹
(defun open-dired-gtd()
  (interactive)
  (dired "~/org"))

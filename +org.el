;;; ~/.doom.d/+org.el -*- lexical-binding: t; -*-



;; 使用dired快速打开gtd文件夹
(defun open-dired-gtd()
  (interactive)
  (dired "~/gtd"))

;; org标题字体取消加粗
(after! org
  (dolist (face '(org-level-1
                  org-level-2 org-level-3
                  org-level-4 org-level-5
                  org-level-6 org-level-7
                  org-level-8))
    (set-face-attribute face nil :weight 'normal))
  )

;; 设置任务状态变成Done时标记时间
(setq org-log-done 'time)

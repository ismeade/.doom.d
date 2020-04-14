;;; ~/.doom.d/+org.el -*- lexical-binding: t; -*-

(use-package! org
  :config
  ;; 设置任务状态变成Done时标记时间
  (setq org-log-done 'time)
  (setq org-tags-column -77)
  ;; org标题字体取消加粗
  (dolist (face '(org-level-1
                  org-level-2
                  org-level-3
                  org-level-4
                  org-level-5
                  org-level-6
                  org-level-7
                  org-level-8))
    (set-face-attribute face nil :weight 'normal))
  
  ;; (add-hook 'org-mode-hook #'org-save-hooks)

  ;; (defun org-save-hooks ()
  ;;   (add-hook 'before-save-hook #'indent-buffer))
  
  ;; (defun indent-buffer ()
  ;;   "Indent the whole buffer."
  ;;   (save-excursion
  ;;     (indent-region (point-min) (point-max) nil))
  )

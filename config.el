;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(load! "+ui")
;;(load! "+auto-save")
(after! org (load! "+org"))

(add-hook 'before-save-hook 'gofmt-before-save)

(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)
(add-hook 'go-mode-hook #'lsp)

;;(after! (:and go lsp company)
;;  (set-company-backend! 'go-mode '(company-lsp :with company-yasnippet)))
(after! go-mode
  (set-company-backend! 'go-mode 'company-lsp))

;; Company
(after! company
  (setq company-idle-delay 0
        company-minimum-prefix-length 1
        company-box-doc-enable nil
        company-box-enable-icon nil))
;;
;;(after! company '(lambda ()
;;                   (setq-local company-backends '(company-lsp))
 ;;                  ))

;;(auto-save-enable)              ;; 开启自动保存功能
;;(setq auto-save-slient t)       ;; 自动保存的时候静悄悄的， 不要打扰我

(exec-path-from-shell-copy-env "GOPATH")
(exec-path-from-shell-copy-env "GOROOT")
(exec-path-from-shell-copy-env "GOBIN")
(exec-path-from-shell-copy-env "PATH")
(exec-path-from-shell-initialize)

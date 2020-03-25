;;; ~/.doom.d/+go.el -*- lexical-binding: t; -*-

(def-package! go-mode
  :config
;;  (set-company-backend! 'go-mode 'company-lsp)
;;  (set-company-backend! 'go-mode '(company-lsp :with company-yasnippet)))
;;  (add-hook 'before-save-hook 'gofmt-before-save)
  (defun lsp-go-install-save-hooks ()
    (add-hook 'before-save-hook #'lsp-format-buffer t t)
    (add-hook 'before-save-hook #'lsp-organize-imports t t))
  (add-hook 'go-mode-hook #'lsp-go-install-save-hooks)
  (add-hook 'go-mode-hook #'lsp)
  ;; 载入shell环境
  (exec-path-from-shell-copy-env "GOPATH")
  (exec-path-from-shell-copy-env "GOROOT")
  (exec-path-from-shell-copy-env "GOBIN")
  (exec-path-from-shell-copy-env "PATH")
  (exec-path-from-shell-initialize)
  )

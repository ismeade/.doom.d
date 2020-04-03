;;; ~/.doom.d/+java.el -*- lexical-binding: t; -*-

;; Download Eclipse JDT Language Server
;; url https://projects.eclipse.org/projects/eclipse.jdt.ls/downloads
(def-package! lsp-java
  :ensure t
  :after lsp
  :config
;;  (set-company-backend! 'go-mode '(company-lsp :with company-yasnippet)))
;;  (add-hook 'before-save-hook 'gofmt-before-save)
  (add-hook 'java-mode-hook 'lsp)
 )

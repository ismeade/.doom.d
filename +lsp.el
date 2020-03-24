;;; ~/.doom.d/+lsp.el -*- lexical-binding: t; -*-

(def-package! lsp-ui
  :config
  (add-hook 'lsp-ui-mode-hook #'lsp-ui-doc-mode 1)
  (setq lsp-ui-doc-max-height 20)
  (setq lsp-ui-doc-max-width 60)
  )

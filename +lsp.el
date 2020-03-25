;;; ~/.doom.d/+lsp.el -*- lexical-binding: t; -*-

(def-package! lsp-ui
  :hook (lsp-mode . lsp-ui-mode)
  :config
  (setq lsp-ui-doc-enable t
        lsp-ui-doc-max-height 20
        lsp-ui-doc-max-width 60
        lsp-ui-doc-position 'at-point
        )

  )

(def-package! company-lsp
  :after lsp-mode)

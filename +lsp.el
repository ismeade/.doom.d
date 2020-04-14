;;; ~/.doom.d/+lsp.el -*- lexical-binding: t; -*-

(use-package! lsp-ui
  :hook (lsp-mode . lsp-ui-mode)
  :config
  (setq lsp-ui-doc-enable t
        lsp-ui-doc-max-height 20
        lsp-ui-doc-max-width 60
        lsp-ui-doc-position 'at-point
        )

  )

(use-package! company-lsp
  :after lsp-mode)

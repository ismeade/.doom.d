;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(load! "+ui")
(load! "+auto-save")
(after! org (load! "+org"))

(add-hook 'before-save-hook 'gofmt-before-save)

(auto-save-enable)              ;; 开启自动保存功能
(setq auto-save-slient t)       ;; 自动保存的时候静悄悄的， 不要打扰我

;;(exec-path-from-shell-copy-env "GOPATH")
;;(exec-path-from-shell-copy-env "GOROOT")
;;(exec-path-from-shell-copy-env "GOBIN")
;;(exec-path-from-shell-copy-env "PATH")
;;(exec-path-from-shell-initialize)

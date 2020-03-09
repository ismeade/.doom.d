;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(load! "+ui")
;;(load! "+auto-save")
;;(after! org (load! "+org"))
;;(after! go (load! "+go"))

;; Company
(after! company
  (setq company-idle-delay 0
        company-minimum-prefix-length 1
        company-box-doc-enable nil
        company-box-enable-icon nil))

;;(auto-save-enable)              ;; 开启自动保存功能
;;(setq auto-save-slient t)       ;; 自动保存的时候静悄悄的， 不要打扰我

(exec-path-from-shell-copy-env "GOPATH")
(exec-path-from-shell-copy-env "GOROOT")
(exec-path-from-shell-copy-env "GOBIN")
(exec-path-from-shell-copy-env "PATH")
(exec-path-from-shell-initialize)

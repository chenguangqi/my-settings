;; 禁用启动动画
(setq inhibit-startup-screen t)
;; 隐藏滚动条
(scroll-bar-mode -1)
;; 隐藏工具栏
(tool-bar-mode -1)
;; 隐藏菜单栏
(menu-bar-mode -1)
;; 安装主题
(load-theme 'tango-dark)

;(add-to-list 'auto-mode-alist  '("\\.emacs\\'" . emacs-lisp-mode))

;; setting english font
(when (member "DejaVu Sans Mono" (font-family-list))
  (set-face-attribute 'default nil :font "DejaVu Sans Mono 16"))

(provide 'common-settings)

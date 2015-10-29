;; 添加配置文件的路径
;(add-to-list 'load-path (expand-file-name "."))

;; 载入配置文件
(require 'package-settings)
(require 'common-settings)
(require 'org-settings)
(require 'slime-settings)
;(require 'latex-settings)
;(require 'google-translate-settings)
;(require 'php-settings)
;(require 'stardict)

;; 配置模板片段
(require 'yasnippet)
(yas-global-mode 1)

;; 配置自动补全
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")

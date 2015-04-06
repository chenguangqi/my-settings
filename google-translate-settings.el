;; 设置google翻译
(require 'google-translate)
(setq-default google-translate-base-url "http://translate.google.cn/translate_a/t")
(setq-default google-translate-enable-ido-completion t)
(setq-default google-translate-default-source-language "en")
(setq-default google-translate-default-target-language "zh-CN")

(global-set-key (kbd "C-x t") 'google-translate-at-point)
(global-set-key (kbd "C-x T") 'google-translate-query-translate)
(global-set-key (kbd "C-x r") 'google-translate-at-point-reverse)
(global-set-key (kbd "C-x R") 'google-translate-query-translate-revers)

(provide 'google-translate-settings)

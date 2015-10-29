;; set org-mode
(add-hook 'org-mode-hook 'turn-on-font-lock)
(add-hook 'org-mode-hook
	  (lambda () (setq truncate-lines nil)))
(org-babel-do-load-languages
 'org-babel-load-languages
 '((scheme . t)
   (latex . t)
   (css . t)
   (sh . t)
   (python . t)
   (emacs-lisp . t)
   (lisp . t)
   (sass . t)
   (js . t)
   (C . t)))
(setq org-confirm-babel-evaluate nil)

;; publish blog
(setq org-publish-use-timestamps-flag nil
      org-export-date-timestamp-format "%Y-%m-%d %H:%M%S"
      coding-system-for-write   'utf-8)

(setq org-publish-project-alist
      '(("blog"
	 ;; 指定源文件目录和发布目录
	 :base-directory "/opt/gits/blog/org/"
	 :publishing-directory "/opt/gits/blog/"
	 ;; :preparation-function
	 ;; :completion-function
	 
	 ;; 选项要发布的文件
	 :base-extension "org"
	 ;; :exclude
	 ;; :include
	 :recursive t
	 
	 ;; 指定发布函数
	 :publishing-function org-html-publish-to-html
	 ;; :htmlized-source nil

	 ;; 指定发布导出器的一般选项
	 :with-fixed-width 80
	 :language "zh-CN"

	 :with-author "Chen Guangqi"
	 ;;:with-creator t
	 :with-date '(("zh-CN" "%Y-%m-%d %H:%M%S"))
	 :section-numbers nil
	 :with-toc nil
	 ;; 指定发HTML布导出器的选项
	 :html-doctype "html5"
	 ;;:html-head-include-default-style nil
	 ;;:html-head "<link rel=\"stylesheet\" href=\"../css/style.css\" type=\"text/css\">"

	 ;; 生成sitemap
	 :auto-sitemap t
	 :sitemap-filename "index.org"
	 :sitemap-title "独狼刺的博客"
	 :sitemap-date-format "%Y-%m-%d %H:%M%S"
	 ;;:sitemap-sans-extension t
	 
	 ;; 生成index
	 ;; :makeindex t
	 )))

(define-key global-map "\C-cc" 'org-capture)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cl" 'org-store-link)

(provide 'org-settings)

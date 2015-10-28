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

(setq org-publish-project-alist
      '(
	;; org website by power
	;; These are the main web files
	("org-file"
	 :base-directory "/opt/gits/blog/org/" ;; Change this to your local dir
	 :base-extension "org"
	 :publishing-directory "/opt/gits/blog/posts/"
	 :recursive t
	 :publishing-function org-publish-org-to-html
	 :headline-levels 4             ; Just the default for this project.
	 :auto-preamble t
	 :section-numbers nil
	 :table-of-contents nil
	 :style "<link rel='stylesheet' type='text/css' href='css/style.css' />"
	 :style-include-default nil)
	;; These are static files (images, pdf, etc)
	;("static-file"
	; :base-directory "/cygdrive/d/HOME//web/" ;; Change this to your local dir
	; :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|txt\\|asc"
	; :publishing-directory "/opt/gits/blog/"
	; :recursive t
	; :publishing-function org-publish-attachment)
	;;("myblog" :components ("org-file" "static-file"))

	;; jekyll-site project
	("jekyll-dulangci" ;; settings for cute-jumper.github.io
	 :base-directory "/opt/gits/org/"
	 :base-extension "org"
	 :publishing-directory "/opt/gits/site/_posts/"
	 :recursive t
	 :publishing-function org-html-publish-to-html
	 :with-toc nil
	 :headline-levels 4
	 :auto-preamble nil
	 :auto-sitemap nil
	 :html-extension "html"
	 :table-of-contents nil
	 :section-numbers t
	 :html_head "<link rel=\"stylesheet\" type=\"text/css\" href=\"../assets/themes/havee/css/style.css\" />"
	 :body-only t)
	("org-static-dulangci"
	 :base-directory "/opt/gits/org/assets/"
	 :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
	 :publishing-directory "/opt/gits/site/assets/"
	 :recursive t
	 :publishing-function org-publish-attachment)
	("jekyll-site" :components ("jekyll-dulangci" "org-static-dulangci"))

	;; org project
	("org-notes"
	 :base-directory "~/org/"
	 :base-extension "org"
	 :publishing-directory "~/public_html/"
	 :recursive t
	 :publishing-function org-html-publish-to-html
	 :headline-levels 4
	 :auto-preamble t)
	("org-static"
	 :base-directory "~/org/"
	 :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
	 :publishing-directory "~/public_html/"
	 :recursive t
	 :publishing-function org-publish-attachment)
	("org" :components ("org-notes" "org-static"))))

(define-key global-map "\C-cc" 'org-capture)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cl" 'org-store-link)

(provide 'org-settings)

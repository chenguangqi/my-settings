;; set org-mode
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
      '(("jekyll-dulangci" ;; settings for cute-jumper.github.io
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
	("jekyll-site" :components ("jekyll-dulangci" "org-static-dulangci"))))

(provide 'org-settings)

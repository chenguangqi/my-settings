;; 设置slime和quicklisp
(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "sbcl")
(add-hook 'lisp-mode-hook
	  (lambda ()
	    (linum-mode t)
	    (auto-complete-mode t)))

;; set hpyerspec root directory
(require 'hyperspec)
;;(setq common-lisp-hyperspec-root "file:/use/share/doc/hyperspec/")
(setq common-lisp-hyperspec-root "file:/usr/local/doc/HyperSpec/")

;; set w3m is defalut browser
(setq browse-url-browser-function 
      '(("doc/HyperSpec/" . w3m-browse-url)
	("." . browse-url-default-browser)))

(provide 'slime-settings)

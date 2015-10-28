;; 设置slime和quicklisp
(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "sbcl")
(add-hook 'lisp-mode-hook
	  (lambda ()
	    (linum-mode t)
	    (auto-complete-mode t)))

;shell$ sbcl
;* (mapc 'require '(sb-bsd-sockets sb-posix sb-introspect sb-cltl2 asdf))
;* (save-lisp-and-die "sbcl.core-for-slime")

;shell$ sbcl
;* (load ".../slime/swank-loader.lisp")
;* (swank-loader:dump-image "sbcl.core-with-swank")

(setq slime-lisp-implementations
      '((sbcl ("sbcl")
	      :coding-system utf-8-unix)
	(ecl ("ecl")
	     :coding-system utf-8-unix)))
      
;; set hpyerspec root directory
(require 'hyperspec)
;;(setq common-lisp-hyperspec-root "file:/use/share/doc/hyperspec/")
(setq common-lisp-hyperspec-root "file:/usr/local/doc/HyperSpec/")

;; set w3m is defalut browser
(setq browse-url-browser-function 
      '(("doc/HyperSpec/" . w3m-browse-url)
	("." . browse-url-default-browser)))

(provide 'slime-settings)

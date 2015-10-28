;; AuCTex and LaTex settings
;(autoload "auctex.el" nil t t)
;(autoload "preview-latex.el" nil t t)
(load "auctex")
(load "preview-latex")
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook
	  (lambda ()
	    (turn-off-auto-fill)
	    (linum-mode t)
	    (auto-complete-mode t)
	    (LaTeX-math-mode t)
	    (outline-minor-mode t)
	    (setq TeX-show-compilation nil)
	    (setq TeX-clean-confirm nil)
	    (setq TeX-save-query nil)
	    (setq TeX-electric-escape t)
	    (setq TeX-view-program-list '(("Evince" "evince %o")))
	    (setq TeX-view-program-selection
		  '((output-pdf "Evince")))
	    (setq TeX-PDF-mode t
		  TeX-engine 'xetex)
	    (add-to-list 'TeX-command-list
			 '("XeLaTeX" "%`xelatex%(mode)%' %t"
			   TeX-run-TeX nil
			   (latex-mode doctex-mode)
			   :help "Run XeLaTeX"))
	    (setq TeX-command-default "XeLaTeX")))
(put 'downcase-region 'disabled nil)

(provide 'latex-settings)

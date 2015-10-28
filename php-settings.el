(provide 'php-settings)


(setq gtags-suggested-key-mapping t)
(require 'gtags)

(add-hook 'php-mode-hook
	  '(lambda ()
	     (auto-complete-mode t)
	     (cscope-minor-mode t)
	     (gtags-mode t)
	     (when (not (member "*.php" cscope-indexer-suffixes))
	       (add-to-list 'cscope-indexer-suffixes "*.php")))
	  t)


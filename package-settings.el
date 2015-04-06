(require 'cl)
(require 'package)
(add-to-list 'package-archives 
	     '("marmalage" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)


(provide 'package-settings)

(require 'bbdb-epkg-install)

;; Redundant, see bbdb-initialize in bbdb-install.el, but anyway...
(add-hook 'gnus-startup-hook  'bbdb-insinuate-gnus)
(add-hook 'mail-setup-hook    'bbdb-insinuate-mail)
(add-hook 'message-setup-hook 'bbdb-insinuate-message)
(add-hook 'rmail-mode-hook    'bbdb-insinuate-rmail)

;; In BBDB, defined field 'mail-alias'
;; Requires that mail abbrevs are active
(when (fboundp 'bbdb-mail-aliases)
  (add-hook 'mail-setup-hook    'bbdb-mail-aliases)
  (add-hook 'message-setup-hook 'bbdb-mail-aliases))

(provide 'bbdb-epkg-activate)

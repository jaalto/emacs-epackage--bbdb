(unless (featurep 'bbdb-install)
  (require 'bbdb-install))

;; Redundant, see bbdb-initialize in bbdb-install.el, but anyway...
(when (fboundp 'bbdb-insinuate-gnus) ; Is bbdb-autoloads.el loaded?
  (add-hook 'gnus-startup-hook  'bbdb-insinuate-gnus)
  (add-hook 'mail-setup-hook    'bbdb-insinuate-sendmail)
  (add-hook 'message-setup-hook 'bbdb-insinuate-message))

;; In BBDB, defined field 'mail-alias'
;; Requires that mail abbrevs are active
(when (fboundp 'bbdb-define-all-aliases)
  (add-hook 'mail-setup-hook    'bbdb-define-all-aliases)
  (add-hook 'message-setup-hook 'bbdb-define-all-aliases))

(provide 'bbdb-epkg-activate)

(dolist (file
         '("lisp/bbdb-anniv.el"
	   "lisp/bbdb-com.el"
	   "lisp/bbdb-gnus.el"
	   "lisp/bbdb-ispell.el"
	   "lisp/bbdb-loaddefs.el"
	   "lisp/bbdb-message.el"
	   "lisp/bbdb-mhe.el"
	   "lisp/bbdb-migrate.el"
	   "lisp/bbdb-mua.el"
	   "lisp/bbdb-print.el"
	   "lisp/bbdb-rmail.el"
	   "lisp/bbdb-vm.el"
	   "lisp/bbdb.el"))
  (if (and (boundp 'verbose)
	   verbose)
      (message "Byte Compile %s" file))
  (if (file-exists-p file)
      (byte-compile-file file)
    (message "** Byte compile error. Not found: %s" file)))

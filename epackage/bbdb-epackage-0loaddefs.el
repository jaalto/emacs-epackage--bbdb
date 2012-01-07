
;;;### (autoloads (bbdb-utilities-pgp) "bbdb-pgp" "bbdb-pgp.el"
;;;;;;  (20185 25663))
;;; Generated autoloads from bbdb-pgp.el

(let ((loads (get 'bbdb-utilities-pgp 'custom-loads))) (if (member '"../bits/bbdb-pgp" loads) nil (put 'bbdb-utilities-pgp 'custom-loads (cons '"../bits/bbdb-pgp" loads))))

;;;***

;;;### (autoloads (bbdb-obsolete-net-canonicalize-net-hook) "bbdb-obsolete"
;;;;;;  "../bits/bbdb-obsolete.el" (20185 25663))
;;; Generated autoloads from bbdb-obsolete.el

(autoload 'bbdb-obsolete-net-canonicalize-net-hook "bbdb-obsolete" "\
Return user's current net address given obsolete ADDR.

Return ADDR if it is not obsolete anywhere, or there is no net address
in the matching record.  The field is set in `bbdb-obsolete-net-field'.

\(fn ADDR)" nil nil)

;;;***

;;;### (autoloads (bbdb-field-edit-del bbdb-field-edit-add) "bbdb-edit"
;;;;;;  "../bits/bbdb-edit.el" (20185 25662))
;;; Generated autoloads from bbdb-edit.el

(autoload 'bbdb-field-edit-add "bbdb-edit" "\
Add VALUE to FIELD of bbdb-record(s).

\(fn BBDB-RECORD FIELD VALUE)" t nil)

(autoload 'bbdb-field-edit-del "bbdb-edit" "\
Delete VALUE to FIELD of bbdb-record(s).
If prefix arg exists, delete all existing field values matching VALUE(regexp).

\(fn BBDB-RECORD FIELD VALUE)" t nil)

;;;***

;;;### (autoloads (bbdb-include-anniversaries bbdb-anniversaries
;;;;;;  bbdb-utilities-anniversaries) "../bits/bbdb-anniv" "../bits/bbdb-anniv.el"
;;;;;;  (20185 25662))
;;; Generated autoloads from bbdb-anniv.el

(let ((loads (get 'bbdb-utilities-anniversaries 'custom-loads))) (if (member '"../bits/bbdb-anniv" loads) nil (put 'bbdb-utilities-anniversaries 'custom-loads (cons '"../bits/bbdb-anniv" loads))))

(defvar bbdb-anniversaries nil "\
Should BBDB anniversaries be included when the diary is displayed (fancy)?
You must modify via \\[customize] for this variable to have an effect.")

(custom-autoload 'bbdb-anniversaries "../bits/bbdb-anniv" nil)

(autoload 'bbdb-include-anniversaries "bbdb-anniv" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads (bbdb-initialize bbdb-version bbdb-mode bbdb-records)
;;;;;;  "../lisp/bbdb" "../lisp/bbdb.el" (20200 26995))
;;; Generated autoloads from bbdb.el

(autoload 'bbdb-records "bbdb" "\
Return a list of all BBDB records; read in and parse the db if necessary.
This function also notices if the disk file has been modified.

\(fn)" nil nil)

(autoload 'bbdb-mode "bbdb" "\
Major mode for viewing and editing the Insidious Big Brother Database.
Letters no longer insert themselves.  Numbers are prefix arguments.
You can move around using the usual cursor motion commands.
\\<bbdb-mode-map>
\\[bbdb-add-mail-alias]	 Add new mail alias to visible records or remove it.
\\[bbdb-edit-field]	 Edit the field on the current line.
\\[bbdb-delete-field-or-record]	 Delete the field on the current line.  If the current line is the
	 first line of a record, then delete the entire record.
\\[bbdb-insert-field]	 Insert a new field into the current record.  Note that this
	 will let you add new fields of your own as well.
\\[bbdb-transpose-fields]	 Swap the field on the current line with the previous field.
\\[bbdb-dial]	 Dial the current phone field.
\\[bbdb-next-record], \\[bbdb-prev-record]	 Move to the next or the previous displayed record, respectively.
\\[bbdb-create]	 Create a new record.
\\[bbdb-toggle-records-layout]	 Toggle whether the current record is displayed in a one-line
	 listing, or a full multi-line listing.
\\[bbdb-do-all-records]\\[bbdb-toggle-records-layout]	 Do that for all displayed records.
\\[bbdb-merge-records]	 Merge the contents of the current record with some other, and then
	 delete the current record.
\\[bbdb-omit-record]	 Remove the current record from the display without deleting it from
	 the database.  This is often a useful thing to do before using one
	 of the `*' commands.
\\[bbdb]	 Search for records in the database (on all fields).
\\[bbdb-search-mail]	 Search for records by mail address.
\\[bbdb-search-organization]	 Search for records by organization.
\\[bbdb-search-notes]	 Search for records by note.
\\[bbdb-search-name]	 Search for records by name.
\\[bbdb-search-changed]	 Display records that have changed since the database was saved.
\\[bbdb-mail]	 Compose mail to the person represented by the current record.
\\[bbdb-do-all-records]\\[bbdb-mail]	 Compose mail to everyone whose record is displayed.
\\[bbdb-save]	 Save the BBDB file to disk.
\\[bbdb-print]	 Create a TeX file containing a pretty-printed version of all the
	 records in the database.
\\[bbdb-do-all-records]\\[bbdb-print]	 Do that for the displayed records only.
\\[other-window]	 Move to another window.
\\[bbdb-info]	 Read the Info documentation for BBDB.
\\[bbdb-help]	 Display a one line command summary in the echo area.
\\[bbdb-browse-url]	 Visit Web sites listed in the `url' field(s) of the current record.

For address completion using the names and mail addresses in the database:
	 in Sendmail mode, type \\<mail-mode-map>\\[bbdb-complete-mail].
	 in Message mode, type \\<message-mode-map>\\[bbdb-complete-mail].

Important variables:
	 `bbdb-add-mails'
	 `bbdb-auto-revert'
	 `bbdb-canonicalize-redundant-mails'
	 `bbdb-case-fold-search'
	 `bbdb-completion-list'
	 `bbdb-default-area-code'
	 `bbdb-default-domain'
	 `bbdb-electric'
	 `bbdb-layout'
	 `bbdb-file'
	 `bbdb-message-caching'
	 `bbdb-new-mails-always-primary'
	 `bbdb-phone-style'
	 `bbdb-check-auto-save-file'
	 `bbdb-pop-up-layout'
	 `bbdb-pop-up-window-size'
	 `bbdb-accept-name-mismatch'
	 `bbdb-read-only'
	 `bbdb-use-alternate-names'
	 `bbdb-message-pop-up'
	 `bbdb-user-mail-address-re'

There are numerous hooks.  M-x apropos ^bbdb.*hook RET

\\{bbdb-mode-map}

\(fn)" t nil)

(autoload 'bbdb-version "bbdb" "\
Return string describing the version of BBDB.
With prefix ARG, insert string at point.

\(fn &optional ARG)" t nil)

(autoload 'bbdb-initialize "bbdb" "\
Initialize BBDB for MUAS.
List MUAS may include the following symbols
to initialize the respective mail/news readers and composers:
  gnus       Gnus mail/news reader.
  mh-e       MH-E mail reader.
  rmail      Rmail mail reader.
  vm         VM mail reader.
  mail       Mail (M-x mail).
  message    Message mode.
See also `bbdb-mua-auto-update-init'.  The latter is a separate function
as this allows one to initialize the auto update feature for some MUAs only,
for example only for outgoing messages.

\(fn &rest MUAS)" nil nil)

;;;***

;;;### (autoloads (bbdb-load-touchtones bbdb-sound-volume bbdb-sounds-directory
;;;;;;  bbdb-xemacs-display-completion-list) "../lisp/bbdb-xemacs"
;;;;;;  "../lisp/bbdb-xemacs.el" (20185 25666))
;;; Generated autoloads from bbdb-xemacs.el

(autoload 'bbdb-xemacs-display-completion-list "bbdb-xemacs" "\
Wrapper for `display-completion-list'.
Allows callbacks on XEmacs `display-completion-list' is called with
`:activate-callback CALLBACK' if CALLBACK is non-nil.
`:user-data DATA' is also used if DATA is non-nil.
Neither are used if CALLBACK is nil.

\(fn LIST &optional CALLBACK DATA)" nil nil)

(defvar bbdb-sounds-directory (expand-file-name "~/.xemacs/etc/sounds") "\
The directory to load the touchtone sound files from, or nil if none.")

(custom-autoload 'bbdb-sounds-directory "../lisp/bbdb-xemacs" t)

(defvar bbdb-sound-volume 50 "\
Volume for playing sounds.")

(custom-autoload 'bbdb-sound-volume "../lisp/bbdb-xemacs" t)

(autoload 'bbdb-load-touchtones "bbdb-xemacs" "\
Load the touchtone sounds into `sound-alist'.
The directory specified in `bbdb-sounds-directory' is searched for the files
touchtone.*\\.\\(wav\\|au\\) as named in `bbdb-sound-files'.
They are stored in `sound-alist' as touchtone0 to touchtone11.

\(fn)" t nil)

;;;***

;;;### (autoloads (bbdb-whois) "bbdb-whois" "bbdb-whois.el"
;;;;;;  (20185 25666))
;;; Generated autoloads from bbdb-whois.el

(autoload 'bbdb-whois "bbdb-whois" "\


\(fn THE-RECORD &optional SERVER)" t nil)

;;;***

;;;### (autoloads (bbdb-insinuate-w3 bbdb-www-grab-homepage bbdb-www)
;;;;;;  "../lisp/bbdb-w3" "../lisp/bbdb-w3.el" (20185 25665))
;;; Generated autoloads from bbdb-w3.el

(autoload 'bbdb-www "bbdb-w3" "\
Visit URLs stored in the `www' field of the current record.
\\[bbdb-apply-next-command-to-all-records]\\[bbdb-www] means to try all records currently visible.
Non-interactively, do all records if arg is nonnil.

\(fn REC &optional WHICH)" t nil)

(autoload 'bbdb-www-grab-homepage "bbdb-w3" "\
Grab the current URL and store it in the bbdb database

\(fn RECORD)" t nil)

(autoload 'bbdb-insinuate-w3 "bbdb-w3" "\
Call this function to hook BBDB into W3.

\(fn)" nil nil)

;;;***

;;;### (autoloads (bbdb-insinuate-vm bbdb/vm-virtual-folder bbdb/vm-auto-folder
;;;;;;  bbdb/vm-virtual-real-folders bbdb/vm-virtual-folder-field
;;;;;;  bbdb/vm-auto-folder-field bbdb/vm-auto-folder-headers) "../lisp/bbdb-vm"
;;;;;;  "../lisp/bbdb-vm.el" (20200 26995))
;;; Generated autoloads from bbdb-vm.el

(defvar bbdb/vm-auto-folder-headers '("From:" "To:" "CC:") "\
The headers used by `bbdb/vm-auto-folder'.
The order in this list is the order how matching will be performed.")

(custom-autoload 'bbdb/vm-auto-folder-headers "../lisp/bbdb-vm" t)

(defvar bbdb/vm-auto-folder-field 'vm-folder "\
The field which `bbdb/vm-auto-folder' searches for.")

(custom-autoload 'bbdb/vm-auto-folder-field "../lisp/bbdb-vm" t)

(defvar bbdb/vm-virtual-folder-field 'vm-virtual "\
The field which `bbdb/vm-virtual-folder' searches for.")

(custom-autoload 'bbdb/vm-virtual-folder-field "../lisp/bbdb-vm" t)

(defvar bbdb/vm-virtual-real-folders nil "\
Real folders used for defining virtual folders.
If nil use `vm-primary-inbox'.")

(custom-autoload 'bbdb/vm-virtual-real-folders "../lisp/bbdb-vm" t)

(autoload 'bbdb/vm-auto-folder "bbdb-vm" "\
Add entries to `vm-auto-folder-alist' for the records in BBDB.
For each record that has a `vm-folder' attribute, add an element
\(MAIL-REGEXP . FOLDER-NAME) to `vm-auto-folder-alist'.
The element gets added to the sublists of `vm-auto-folder-alist'
specified in `bbdb/vm-auto-folder-headers'.
MAIL-REGEXP matches the mail addresses of the BBDB record.
The value of the `vm-folder' attribute becomes FOLDER-NAME.
The `vm-folder' attribute is defined via `bbdb/vm-auto-folder-field'.

Add this function to `bbdb-before-save-hook' and your .vm.

\(fn)" t nil)

(autoload 'bbdb/vm-virtual-folder "bbdb-vm" "\
Create `vm-virtual-folder-alist' according to the records in BBDB.
For each record that has a `vm-virtual' attribute, add or modify the
corresponding VIRTUAL-FOLDER-NAME element of `vm-virtual-folder-alist'.

  (VIRTUAL-FOLDER-NAME ((FOLDER-NAME ...)
                        (author-or-recipient MAIL-REGEXP)))

VIRTUAL-FOLDER-NAME is the first element of the `vm-virtual' attribute.
FOLDER-NAME ... are either the remaining attributes of vm-virtual,
or `bbdb/vm-virtual-real-folders' or `vm-primary-inbox'.
MAIL-REGEXP matches the mail addresses of the BBDB record.
The `vm-virtual' attribute is defined via `bbdb/vm-virtual-folder-field'.

Add this function to `bbdb-before-save-hook' and your .vm.

\(fn)" t nil)

(autoload 'bbdb-insinuate-vm "bbdb-vm" "\
Hook BBDB into VM.
Do not call this in your init file.  Use `bbdb-initialize'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (bbdb-srv-add-phone bbdb/srv-auto-create-mail-news-dispatcher
;;;;;;  bbdb/srv-handle-headers-with-delay) "../lisp/bbdb-srv" "../lisp/bbdb-srv.el"
;;;;;;  (20185 25665))
;;; Generated autoloads from bbdb-srv.el

(autoload 'bbdb/srv-handle-headers-with-delay "bbdb-srv" "\
Just like bbdb/srv-handle-headers, but only updates every few seconds.
This is so that trying to display many records in succession won't queue them
up, but will end up only displaying a record when no displays have been
requested for a couple of seconds.

\(fn HEADERS)" nil nil)

(defalias 'bbdb-srv 'bbdb/srv-handle-headers-with-delay)

(autoload 'bbdb/srv-auto-create-mail-news-dispatcher "bbdb-srv" "\
For use as the value of bbdb/srv-auto-create-p.
This will try to decide if this is a mail message or a news message, and then
run either bbdb/news-auto-create-p or bbdb/mail-auto-create-p as appropriate.
\(The heuristic is that news messages never have a Status or X-Mozilla-Status
header; and that mail messages never have Path headers.)

\(fn)" nil nil)

(autoload 'bbdb-srv-add-phone "bbdb-srv" "\


\(fn PHONE-STRING &optional DESCRIPTION RECORD)" nil nil)

;;;***

;;;### (autoloads (bbdb-rfc822-addresses bbdb-extract-address-components
;;;;;;  bbdb-snarf-region bbdb-snarf) "../lisp/bbdb-snarf" "../lisp/bbdb-snarf.el"
;;;;;;  (20185 25665))
;;; Generated autoloads from bbdb-snarf.el

(autoload 'bbdb-snarf "bbdb-snarf" "\
snarf up a bbdb record WHERE the point is.
We assume things are line-broken and paragraph-bounded.
The name comes first and other fields (address,
phone, email, web pages) are recognized by context.

Required context:
    addresses end with \"City, State ZIP\" or \"City, State\"
    phones match bbdb-snarf-phone-regexp
        (currently US-style phones)
    e-mail addresses have @'s in them
    web sites are recognized by http:// or www.

Address and phone context are currently US-specific;
patches to internationalize these assumptions are welcome.

\\[bbdb-snarf] is similar to \\[bbdb-whois-sentinel], but less specialized.

\(fn WHERE)" t nil)

(autoload 'bbdb-snarf-region "bbdb-snarf" "\
snarf up a bbdb record in the current region.  See `bbdb-snarf' for
more details.

\(fn BEGIN END)" t nil)

(autoload 'bbdb-extract-address-components "bbdb-snarf" "\
Return a list of address components found in ADSTRING.
If extracting fails one probably has to adjust the variable
`bbdb-extract-address-component-regexps'.

\(fn ADSTRING &optional IGNORE-ERRORS)" nil nil)

(autoload 'bbdb-rfc822-addresses "bbdb-snarf" "\
Split ADDRLINE into a list of parsed addresses.

You can't do this with rfc822.el in any sort of useful way because it discards
the comments. You can't do this with mail-extr.el because the multiple address
parsing in GNU Emacs appears to be broken beyond belief, and the XEmacs
version doesn't support multiple addresses.

\(fn ADDRLINE &optional IGNORE-ERRORS)" nil nil)

;;;***

;;;### (autoloads (bbdb-insinuate-sc bbdb/sc-default) "bbdb-sc"
;;;;;;  "../lisp/bbdb-sc.el" (20185 25665))
;;; Generated autoloads from bbdb-sc.el

(autoload 'bbdb/sc-default "bbdb-sc" "\
If the current \"from\" field in `sc-mail-info' alist
contains only an e-mail address, lookup e-mail address in
BBDB, and prepend a new \"from\" field to `sc-mail-info'.

\(fn)" nil nil)

(autoload 'bbdb-insinuate-sc "bbdb-sc" "\
Call this function to hook BBDB into Supercite.

\(fn)" nil nil)

;;;***

;;;### (autoloads (bbdb-insinuate-rmail) "bbdb-rmail" "bbdb-rmail.el"
;;;;;;  (20200 26995))
;;; Generated autoloads from bbdb-rmail.el

(autoload 'bbdb-insinuate-rmail "bbdb-rmail" "\
Hook BBDB into RMAIL.
Do not call this in your init file.  Use `bbdb-initialize'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (bbdb-insinuate-reportmail) "bbdb-reportmail"
;;;;;;  "../lisp/bbdb-reportmail.el" (20185 25665))
;;; Generated autoloads from bbdb-reportmail.el

(autoload 'bbdb-insinuate-reportmail "bbdb-reportmail" "\
Call this function to hook BBDB into reportmail.

\(fn)" nil nil)

;;;***

;;;### (autoloads (bbdb-print) "bbdb-print" "bbdb-print.el"
;;;;;;  (20200 26995))
;;; Generated autoloads from bbdb-print.el

(autoload 'bbdb-print "bbdb-print" "\
Make a TeX FILE for printing RECORDS.
Interactively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.
With prefix BRIEF non-nil, make a brief (one line per record) printout.
There are various variables for customizing the content and format
of the printout, notably the variables `bbdb-print-alist' and
`bbdb-print-require'.

\(fn RECORDS FILE BRIEF)" t nil)

;;;***

;;;### (autoloads (bbdb-canonicalize-mail-1 bbdb-auto-notes bbdb-mua-auto-update-init
;;;;;;  bbdb-mua-auto-update bbdb-mua-edit-field-recipients bbdb-mua-edit-field-sender
;;;;;;  bbdb-mua-edit-field bbdb-mua-annotate-recipients bbdb-mua-annotate-sender
;;;;;;  bbdb-display-all-recipients bbdb-mua-display-recipients bbdb-mua-display-sender
;;;;;;  bbdb-mua-display-records bbdb-update-records bbdb-select-message
;;;;;;  bbdb-ignore-message bbdb-accept-message bbdb-message-header)
;;;;;;  "../lisp/bbdb-mua" "../lisp/bbdb-mua.el" (20200 26995))
;;; Generated autoloads from bbdb-mua.el

(autoload 'bbdb-message-header "bbdb-mua" "\
For the current message return the value of HEADER.
MIME encoded headers are decoded.  Return nil if HEADER does not exist.

\(fn HEADER)" nil nil)

(autoload 'bbdb-accept-message "bbdb-mua" "\
For use with variable `bbdb-mua-update-interactive-p' and friends.
Return the value of variable `bbdb-update-records-p' for messages matching
`bbdb-accept-message-alist'.  If INVERT is non-nil, accept messages
not matching `bbdb-ignore-message-alist'.

\(fn &optional INVERT)" nil nil)

(autoload 'bbdb-ignore-message "bbdb-mua" "\
For use with variable `bbdb-mua-update-interactive-p' and friends.
Return the value of variable `bbdb-update-records-p' for messages not matching
`bbdb-ignore-message-alist'.  If INVERT is non-nil, accept messages
matching `bbdb-accept-message-alist'.

\(fn &optional INVERT)" nil nil)

(autoload 'bbdb-select-message "bbdb-mua" "\
For use with variable `bbdb-mua-update-interactive-p' and friends.
Return the value of variable `bbdb-update-records-p' for messages both matching
`bbdb-accept-message-alist' and not matching `bbdb-ignore-message-alist'.

\(fn)" nil nil)

(autoload 'bbdb-update-records "bbdb-mua" "\
Return the list of BBDB records matching ADDRESS-LIST.
ADDRESS-LIST is a list of mail addresses.  (It can be extracted from
a mail message using `bbdb-get-address-components'.)
UPDATE-P may take the following values:
 search       Search for existing records matching ADDRESS.
 query        Search for existing records matching ADDRESS;
                query for creation of a new record if the record does not exist.
 create or t  Search for existing records matching ADDRESS;
                create a new record if it does not yet exist.
 a function   This functions will be called with no arguments.
                It should return one of the above values.
 nil          Take the MUA-specific variable `bbdb/MUA-update-records-p'
                which may take one of the above values.
                If this still gives nil, `bbdb-update-records' returns nil.
If MSG-KEY is non-nil consult cache.

Usually this function is called by the wrapper `bbdb-mua-update-records'.

\(fn ADDRESS-LIST &optional UPDATE-P MSG-KEY)" nil nil)

(autoload 'bbdb-mua-display-records "bbdb-mua" "\
Display the BBDB record(s) for the addresses in this message.
This looks into the headers of a message according to HEADER-CLASS.
Then for the mail addresses found the corresponding BBDB records are displayed.
UPDATE-P determines whether only existing BBDB records are displayed
or whether also new records are created for these mail addresses.

HEADER-CLASS is defined in `bbdb-message-headers'.  If it is nil,
use all classes in `bbdb-message-headers'.
UPDATE-P may take the same values as `bbdb-update-records-p'.
For interactive calls, see function `bbdb-mua-update-interactive-p'.

\(fn &optional HEADER-CLASS UPDATE-P)" t nil)

(autoload 'bbdb-mua-display-sender "bbdb-mua" "\
Display the BBDB record(s) for the sender of this message.
UPDATE-P may take the same values as `bbdb-update-records-p'.
For interactive calls, see function `bbdb-mua-update-interactive-p'.

\(fn &optional UPDATE-P)" t nil)

(autoload 'bbdb-mua-display-recipients "bbdb-mua" "\
Display the BBDB record(s) for the recipients of this message.
UPDATE-P may take the same values as `bbdb-update-records-p'.
For interactive calls, see function `bbdb-mua-update-interactive-p'.

\(fn &optional UPDATE-P)" t nil)

(autoload 'bbdb-display-all-recipients "bbdb-mua" "\
Display BBDB records for all addresses of the message in this buffer.
If the records do not exist, they are generated.

\(fn &optional HEADER-CLASS)" t nil)

(autoload 'bbdb-mua-annotate-sender "bbdb-mua" "\
Add a line to the end of the Notes field of the BBDB record
corresponding to the sender(s) of this message.
If prefix REPLACE is non-nil, replace the existing notes entry (if any).

\(fn STRING &optional REPLACE)" t nil)

(autoload 'bbdb-mua-annotate-recipients "bbdb-mua" "\
Add a line to the end of the Notes field of the BBDB record
corresponding to the recipient(s) of this message.
If prefix REPLACE is non-nil, replace the existing notes entry (if any).

\(fn STRING &optional REPLACE)" t nil)

(autoload 'bbdb-mua-edit-field "bbdb-mua" "\
Edit FIELD of record.
FIELD defaults to 'notes.  With prefix arg, ask for FIELD.

\(fn FIELD &optional HEADER-CLASS)" t nil)

(autoload 'bbdb-mua-edit-field-sender "bbdb-mua" "\
Edit FIELD of record corresponding to sender of this message.
FIELD defaults to 'notes.  With prefix arg, ask for FIELD.

\(fn &optional FIELD)" t nil)

(autoload 'bbdb-mua-edit-field-recipients "bbdb-mua" "\
Edit FIELD of record corresponding to recipient of this message.
FIELD defaults to 'notes.  With prefix arg, ask for FIELD.

\(fn &optional FIELD)" t nil)

(autoload 'bbdb-mua-auto-update "bbdb-mua" "\
Update BBDB automatically based on incoming and outgoing messages.
This looks into the headers of a message according to HEADER-CLASS.
Then for the mail addresses found the corresponding BBDB records are updated.
UPDATE-P determines whether only existing BBDB records are taken
or whether also new records are created for these mail addresses.
Return matching records.

HEADER-CLASS is defined in `bbdb-message-headers'.  If it is nil,
use all classes in `bbdb-message-headers'.
UPDATE-P may take the same values as `bbdb-mua-auto-update-p'.
If UPDATE-P is nil, use `bbdb-mua-auto-update-p'.

If `bbdb-message-pop-up' is non-nil, the *BBDB* buffer is displayed
along with the MUA window(s), showing the matching records.

This function is intended for noninteractive use via appropriate MUA hooks.
Call `bbdb-mua-auto-update-init' in your init file to put this function
into the respective MUA hooks.
See `bbdb-mua-display-records' and friends for interactive commands.

\(fn &optional HEADER-CLASS UPDATE-P)" nil nil)

(autoload 'bbdb-mua-auto-update-init "bbdb-mua" "\
For MUAS add `bbdb-mua-auto-update' to their presentation hook.
If a MUA is not an element of MUAS, `bbdb-mua-auto-update' is removed
from the respective presentation hook.

Call this function in your init file to use the auto update feature with MUAS.
This function is separate from the general function `bbdb-initialize'
as this allows one to initialize the auto update feature for some MUAs only,
for example only for outgoing messages.

\(fn &rest MUAS)" nil nil)

(autoload 'bbdb-auto-notes "bbdb-mua" "\
Automatically annotate RECORD based on the headers of the current message.
See the variables `bbdb-auto-notes-rules', `bbdb-auto-notes-ignore-messages'
and `bbdb-auto-notes-ignore-headers'.
For use as an element of `bbdb-notice-mail-hook'.

\(fn RECORD)" nil nil)

(autoload 'bbdb-canonicalize-mail-1 "bbdb-mua" "\


\(fn ADDRESS)" nil nil)

;;;***

;;;### (autoloads (bbdb-undocumented-variables bbdb-migrate) "bbdb-migrate"
;;;;;;  "../lisp/bbdb-migrate.el" (20200 26995))
;;; Generated autoloads from bbdb-migrate.el

(autoload 'bbdb-migrate "bbdb-migrate" "\
Migrate the BBDB from the version on disk to the current version
\(in `bbdb-file-format').

\(fn RECORDS OLD-FORMAT)" nil nil)

(autoload 'bbdb-undocumented-variables "bbdb-migrate" "\
Return list of undocumented variables in NAME-SPACE.
NAME-SPACE defaults to \"bbdb-\".  Use a prefix arg to specify NAME-SPACE
interactively.  If MESSAGE is non-nil (as in interactive calls) display
the list in the message area.

This command may come handy to identify BBDB variables in your init file
that are not used anymore by the current version of BBDB.  Yet this fails
for outdated BBDB variables that are set via your personal `custom-file'.

\(fn &optional NAME-SPACE MESSAGE)" t nil)

;;;***

;;;### (autoloads (bbdb-insinuate-mh) "bbdb-mhe" "bbdb-mhe.el"
;;;;;;  (20200 26995))
;;; Generated autoloads from bbdb-mhe.el

(autoload 'bbdb-insinuate-mh "bbdb-mhe" "\
Call this function to hook BBDB into MH-E.
Do not call this in your init file.  Use `bbdb-initialize'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (bbdb-insinuate-mail bbdb-insinuate-message) "bbdb-message"
;;;;;;  "../lisp/bbdb-message.el" (20200 26995))
;;; Generated autoloads from bbdb-message.el

(autoload 'bbdb-insinuate-message "bbdb-message" "\
Hook BBDB into Message Mode.
Do not call this in your init file.  Use `bbdb-initialize'.

\(fn)" nil nil)

(autoload 'bbdb-insinuate-mail "bbdb-message" "\
Hook BBDB into Mail Mode.
Do not call this in your init file.  Use `bbdb-initialize'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (bbdb-merge-file bbdb-merge-record) "bbdb-merge"
;;;;;;  "../lisp/bbdb-merge.el" (20185 25665))
;;; Generated autoloads from bbdb-merge.el

(autoload 'bbdb-merge-record "bbdb-merge" "\
Generic merge function.

Merges new-record into your bbdb, using DATE to check who's more
up-to-date and OVERRIDE to decide who gets precedence if two dates
match. DATE can be extracted from a notes if it's an alist with an
element marked timestamp. Set OVERRIDE to 'new to allow the new record
to stomp on existing data, 'old to preserve existing data or nil to
merge both together. If it can't find a record to merge with, it will
create a new record. If MERGE-RECORD is set, it's a record discovered
by other means that should be merged with.

Returns the Grand Unified Record.

\(fn NEW-RECORD &optional MERGE-RECORD OVERRIDE)" nil nil)

(autoload 'bbdb-merge-file "bbdb-merge" "\
Merge a bbdb file into the in-core bbdb.

\(fn &optional BBDB-NEW OVERRIDE MATCH-FUN)" t nil)

;;;***

;;;### (autoloads (bbdb-ispell-export) "bbdb-ispell" "bbdb-ispell.el"
;;;;;;  (20200 26995))
;;; Generated autoloads from bbdb-ispell.el

(autoload 'bbdb-ispell-export "bbdb-ispell" "\
Export BBDB records to ispell personal dictionaries.

\(fn)" t nil)

;;;***

;;;### (autoloads (bbdb-force-record-create sample-bbdb-canonicalize-net-hook
;;;;;;  bbdb-auto-notes-hook bbdb-ignore-some-messages-hook bbdb-ignore-selected-messages-hook
;;;;;;  bbdb-ignore-most-messages-hook bbdb-extract-field-value bbdb-header-start
;;;;;;  bbdb-creation-date-hook bbdb-timestamp-hook) "../lisp/bbdb-hooks"
;;;;;;  "../lisp/bbdb-hooks.el" (20185 25665))
;;; Generated autoloads from bbdb-hooks.el

(autoload 'bbdb-timestamp-hook "bbdb-hooks" "\
For use as a `bbdb-change-hook'; maintains a notes-field called `timestamp'
for the given record which contains the time when it was last modified.  If
there is such a field there already, it is changed, otherwise it is added.

\(fn RECORD)" nil nil)

(autoload 'bbdb-creation-date-hook "bbdb-hooks" "\
For use as a `bbdb-create-hook'; adds a notes-field called `creation-date'
which is the current time string.

\(fn RECORD)" nil nil)

(autoload 'bbdb-header-start "bbdb-hooks" "\
Returns a marker at the beginning of the header block of the current
message.  This will not necessarily be in the current buffer.

\(fn)" nil nil)

(autoload 'bbdb-extract-field-value "bbdb-hooks" "\
Given the name of a field (like \"Subject\") this returns the value of
that field in the current message, or nil.  This works whether you're in
Gnus, Rmail, or VM.  This works on multi-line fields, but if more than
one field of the same name is present, only the last is returned.  It is
expected that the current buffer has a message in it, and (point) is at the
beginning of the message headers.

\(fn FIELD-NAME)" nil nil)

(autoload 'bbdb-ignore-most-messages-hook "bbdb-hooks" "\
For use as the value of bbdb/news-auto-create-p or bbdb/mail-auto-create-p.
This will automatically create BBDB entries for messages which match
the bbdb-ignore-most-messages-alist (which see) and *no* others.

\(fn &optional INVERT-SENSE)" nil nil)

(autoload 'bbdb-ignore-selected-messages-hook "bbdb-hooks" "\
For use as a bbdb/news-auto-create-hook or bbdb/mail-auto-create-hook.
This will automatically create BBDB entries for messages based on a
combination of bbdb-ignore-some-messages-alist and
bbdb-ignore-most-messages-alist.  It first looks at the SOME list.  If
that doesn't disqualify a message, then it looks at the MOST list.  If
that qualifies the message, the record is auto-created, but a
confirmation is conditionally sought, based on the value of
`bbdb-ignore-selected-messages-confirmation'.

\(fn)" nil nil)

(autoload 'bbdb-ignore-some-messages-hook "bbdb-hooks" "\
For use as a `bbdb/news-auto-create-hook' or `bbdb/mail-auto-create-hook'.
This will automatically create BBDB entries for messages which do *not*
match the `bbdb-ignore-some-messages-alist' (which see).

\(fn)" nil nil)

(autoload 'bbdb-auto-notes-hook "bbdb-hooks" "\
For use as a `bbdb-notice-hook'.  This might automatically add some text
to the notes field of the BBDB record corresponding to the current record
based on the header of the current message.  See the documentation for
the variables `bbdb-auto-notes-alist' and `bbdb-auto-notes-ignore'.

\(fn RECORD)" nil nil)

(autoload 'sample-bbdb-canonicalize-net-hook "bbdb-hooks" "\


\(fn ADDR)" nil nil)

(autoload 'bbdb-force-record-create "bbdb-hooks" "\
Force automatic creation of a BBDB records for the current message.
You might add this to the reply hook of your MUA in order to automatically
get records added for those people you reply to.

\(fn)" t nil)

;;;***

;;;### (autoloads (bbdb-menu bbdb-fontify-buffer) "bbdb-gui"
;;;;;;  "../lisp/bbdb-gui.el" (20185 25665))
;;; Generated autoloads from bbdb-gui.el

(autoload 'bbdb-fontify-buffer "bbdb-gui" "\


\(fn &optional RECORDS)" t nil)

(autoload 'bbdb-menu "bbdb-gui" "\


\(fn EVENT)" t nil)

;;;***

;;;### (autoloads (bbdb-insinuate-gnus bbdb/gnus-score) "bbdb-gnus"
;;;;;;  "../lisp/bbdb-gnus.el" (20200 26995))
;;; Generated autoloads from bbdb-gnus.el

(autoload 'bbdb/gnus-score "bbdb-gnus" "\
This returns a score alist for Gnus.  A score pair will be made for
every member of the mail field in records which also have a gnus-score
field.  This allows the BBDB to serve as a supplemental global score
file, with the advantage that it can keep up with multiple and changing
addresses better than the traditionally static global scorefile.

\(fn GROUP)" nil nil)

(autoload 'bbdb-insinuate-gnus "bbdb-gnus" "\
Hook BBDB into Gnus.
Do not call this in your init file.  Use `bbdb-initialize'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (bbdb-create-ftp-site bbdb-ftp) "bbdb-ftp"
;;;;;;  "../lisp/bbdb-ftp.el" (20185 25665))
;;; Generated autoloads from bbdb-ftp.el

(autoload 'bbdb-ftp "bbdb-ftp" "\
Use ange-ftp to open an ftp-connection to a BBDB record's name.
If this command is executed from the *BBDB* buffer, ftp the site of
the record at point; otherwise, it prompts for an ftp-site.

\(fn BBDB-RECORD &optional WHICH)" t nil)

(autoload 'bbdb-create-ftp-site "bbdb-ftp" "\
Add a new ftp-site entry to the bbdb database.
Prompts for all relevant info using the echo area,
inserts the new record in the db, sorted alphabetically.

\(fn RECORD)" t nil)

;;;***

;;;### (autoloads (bbdb-help bbdb-info bbdb-copy-records-as-kill
;;;;;;  bbdb-grab-url bbdb-browse-url bbdb-dial bbdb-add-mail-alias
;;;;;;  bbdb-mail-aliases bbdb-complete-mail bbdb-completing-read-mails
;;;;;;  bbdb-completion-predicate bbdb-mail bbdb-dwim-mail bbdb-sort-notes
;;;;;;  bbdb-sort-phones bbdb-sort-addresses bbdb-merge-records bbdb-omit-record
;;;;;;  bbdb-display-records-with-layout bbdb-display-records-completely
;;;;;;  bbdb-toggle-records-layout bbdb-display-current-record bbdb-display-all-records
;;;;;;  bbdb-delete-records bbdb-delete-field-or-record bbdb-transpose-fields
;;;;;;  bbdb-edit-field bbdb-insert-field bbdb-create bbdb-creation-no-change
;;;;;;  bbdb-creation-newer bbdb-creation-older bbdb-timestamp-newer
;;;;;;  bbdb-timestamp-older bbdb-search-changed bbdb-search-notes
;;;;;;  bbdb-search-phone bbdb-search-mail bbdb-search-address bbdb-search-organization
;;;;;;  bbdb-search-name bbdb bbdb-search-invert bbdb-append-display
;;;;;;  bbdb-append-display-p bbdb-do-records bbdb-do-all-records)
;;;;;;  "../lisp/bbdb-com" "../lisp/bbdb-com.el" (20200 26995))
;;; Generated autoloads from bbdb-com.el

(autoload 'bbdb-do-all-records "bbdb-com" "\
Command prefix for operating on all records currently displayed.
This only works for certain commands.

\(fn)" t nil)

(autoload 'bbdb-do-records "bbdb-com" "\
Return list of records to operate on.
Normally this list includes only the current record.
It includes all currently displayed records if the command prefix \\<bbdb-mode-map>\\[bbdb-do-all-records] is used.
If FULL is non-nil, the list of records includes display information.

\(fn &optional FULL)" nil nil)

(autoload 'bbdb-append-display-p "bbdb-com" "\
Return variable `bbdb-append-display' and reset.

\(fn)" nil nil)

(autoload 'bbdb-append-display "bbdb-com" "\
Toggle appending next searched records in the *BBDB* buffer.
With prefix ARG \\[universal-argument] always append.
With ARG a positive number append for that many times.
With ARG a negative number do not append.

\(fn &optional ARG)" t nil)

(autoload 'bbdb-search-invert "bbdb-com" "\
Toggle inversion of the next search command.
With prefix ARG a positive number, invert next search.
With prefix ARG a negative number, do not invert next search.

\(fn &optional ARG)" t nil)

(autoload 'bbdb "bbdb-com" "\
Display all records in the BBDB matching REGEXP
in either the name(s), organization, address, phone, mail, or notes.

\(fn REGEXP &optional LAYOUT)" t nil)

(autoload 'bbdb-search-name "bbdb-com" "\
Display all records in the BBDB matching REGEXP in the name
\(or ``alternate'' names).

\(fn REGEXP &optional LAYOUT)" t nil)

(autoload 'bbdb-search-organization "bbdb-com" "\
Display all records in the BBDB matching REGEXP in the organization field.

\(fn REGEXP &optional LAYOUT)" t nil)

(autoload 'bbdb-search-address "bbdb-com" "\
Display all records in the BBDB matching REGEXP in the address fields.

\(fn REGEXP &optional LAYOUT)" t nil)

(autoload 'bbdb-search-mail "bbdb-com" "\
Display all records in the BBDB matching REGEXP in the mail address.

\(fn REGEXP &optional LAYOUT)" t nil)

(autoload 'bbdb-search-phone "bbdb-com" "\
Display all records in the BBDB matching REGEXP in the phones field.

\(fn REGEXP &optional LAYOUT)" t nil)

(autoload 'bbdb-search-notes "bbdb-com" "\
Display all records in the BBDB matching REGEXP in the notes FIELD.

\(fn FIELD REGEXP &optional LAYOUT)" t nil)

(autoload 'bbdb-search-changed "bbdb-com" "\
Display all records in the bbdb database which have changed since
the database was last saved.

\(fn &optional LAYOUT)" t nil)

(autoload 'bbdb-timestamp-older "bbdb-com" "\
Display records with timestamp older than DATE.
DATE must be in yyyy-mm-dd format.

\(fn DATE &optional LAYOUT)" t nil)

(autoload 'bbdb-timestamp-newer "bbdb-com" "\
Display records with timestamp newer than DATE.
DATE must be in yyyy-mm-dd format.

\(fn DATE &optional LAYOUT)" t nil)

(autoload 'bbdb-creation-older "bbdb-com" "\
Display records with creation-date older than DATE.
DATE must be in yyyy-mm-dd format.

\(fn DATE &optional LAYOUT)" t nil)

(autoload 'bbdb-creation-newer "bbdb-com" "\
Display records with creation-date newer than DATE.
DATE must be in yyyy-mm-dd format.

\(fn DATE &optional LAYOUT)" t nil)

(autoload 'bbdb-creation-no-change "bbdb-com" "\
Display records that have the same timestamp and creation-date.

\(fn &optional LAYOUT)" t nil)

(autoload 'bbdb-create "bbdb-com" "\
Add a new RECORD to the bbdb database ; prompts for all relevant info
using the echo area, inserts the new record in BBDB, sorted alphabetically,
and offers to save the BBDB file.  DO NOT call this from a program.
Call `bbdb-create-internal' instead.

\(fn RECORD)" t nil)

(autoload 'bbdb-insert-field "bbdb-com" "\
Add a new field to the current record; the FIELD type and VALUE
are prompted for if not supplied.

If you are inserting a new phone-number field, the phone number style
is controlled via `bbdb-phone-style'.  A prefix C-u inverts the style,

If you are inserting a new mail address, you can have BBDB append a
default domain to any mail address that does not contain one.  Set
`bbdb-default-domain' to a string such as \"mycompany.com\" (or,
depending on your environment, (getenv \"DOMAINNAME\")), and
\"@mycompany.com\" will be appended to an address that is entered as
just a username.  A prefix arg C-u (or a `bbdb-default-domain'
value of \"\", the default) means do not alter the address.

\(fn RECORD FIELD VALUE)" t nil)

(autoload 'bbdb-edit-field "bbdb-com" "\
Edit the contents of FIELD of RECORD.
If point is in the middle of a multi-line field (e.g., address),
then the entire field is edited, not just the current line.

\(fn RECORD FIELD &optional VALUE FLAG)" t nil)

(autoload 'bbdb-transpose-fields "bbdb-com" "\
Transpose previous and current field of a BBDB record.
With numeric prefix ARG, take previous field and move it past ARG fields.
With region active or ARG 0, transpose field point is in and field mark is in.

Both fields must be in the same record, and must be of the same basic type
\(that is, you can use this command to change the order in which phone numbers
or email addresses are listed, but you cannot use it to make an address appear
before a phone number; the order of field types is fixed).

If the current field is the name field, transpose first and last name,
irrespective of the value of ARG.

\(fn ARG)" t nil)

(autoload 'bbdb-delete-field-or-record "bbdb-com" "\
For RECORDS delete FIELD.
If FIELD is the `name' field, delete RECORDS from datanbase.
Only then RECORDS may be more than one record.
Interactively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records',
and FIELD is the field point is on.
If prefix NOPROMPT is non-nil, do not confirm deletion.

\(fn RECORDS FIELD &optional NOPROMPT)" t nil)

(autoload 'bbdb-delete-records "bbdb-com" "\
Delete RECORDS.
Interactively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.
If prefix NOPROMPT is non-nil, do not confirm deletion.

\(fn RECORDS &optional NOPROMPT)" t nil)

(autoload 'bbdb-display-all-records "bbdb-com" "\
Show all records.
If invoked in a *BBDB* buffer point stays on the currently visible record.
Inverse of `bbdb-display-current-record'.

\(fn &optional LAYOUT)" t nil)

(autoload 'bbdb-display-current-record "bbdb-com" "\
Narrow to current record.  Inverse of `bbdb-display-all-records'.

\(fn &optional LAYOUT)" t nil)

(autoload 'bbdb-toggle-records-layout "bbdb-com" "\
Toggle layout of RECORDS (elided or expanded).
Interactively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.
With prefix ARG 0, RECORDS are displayed elided.
With any other non-nil ARG, RECORDS are displayed expanded.

\(fn RECORDS &optional ARG)" t nil)

(autoload 'bbdb-display-records-completely "bbdb-com" "\
Display RECORDS using layout `full-multi-line' (i.e., display all fields).
Interactively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.

\(fn RECORDS)" t nil)

(autoload 'bbdb-display-records-with-layout "bbdb-com" "\
Display RECORDS using LAYOUT.
Interactively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.

\(fn RECORDS LAYOUT)" t nil)

(autoload 'bbdb-omit-record "bbdb-com" "\
Remove current record from the display without deleting it from BBDB.
With prefix N, omit the next N records.  If negative, omit backwards.

\(fn N)" t nil)

(autoload 'bbdb-merge-records "bbdb-com" "\
Merge the current record into some other record; that is, delete the
record under point after copying all of the data within it into some other
record.  This is useful if you realize that somehow a redundant record has
gotten into the database, and you want to merge it with another.

If both records have names and/or organizations, you are asked which to use.
Phone numbers, addresses, and mail addresses are simply concatenated.
The first record is the record under the point; the second is prompted for.

\(fn OLD-RECORD NEW-RECORD)" t nil)

(autoload 'bbdb-sort-addresses "bbdb-com" "\
Sort the addresses in RECORDS according to the label.
Interactively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.
If UPDATE is non-nil (as in interactive calls) update the database.
Otherwise, this is the caller's responsiblity (for example, when used
in `bbdb-change-hook').

\(fn RECORDS &optional UPDATE)" t nil)

(autoload 'bbdb-sort-phones "bbdb-com" "\
Sort the phones in RECORDS according to the label.
Interactively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.
If UPDATE is non-nil (as in interactive calls) update the database.
Otherwise, this is the caller's responsiblity (for example, when used
in `bbdb-change-hook').

\(fn RECORDS &optional UPDATE)" t nil)

(autoload 'bbdb-sort-notes "bbdb-com" "\
Sort the notes in RECORDS according to `bbdb-notes-sort-order'.
Interactively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.
If UPDATE is non-nil (as in interactive calls) update the database.
Otherwise, this is the caller's responsiblity (for example, when used
in `bbdb-change-hook').

\(fn RECORDS &optional UPDATE)" t nil)

(autoload 'bbdb-dwim-mail "bbdb-com" "\
Return a string to use as the mail address of RECORD.
The mail address is formatted like \"Firstname Lastname <address>\".
If both the first name and last name are constituents of the address
as in John.Doe@Some.Host, and `bbdb-mail-avoid-redundancy' is non-nil,
then the address is used as is.
If `bbdb-mail-avoid-redundancy' is 'mail-only the name is never included.
MAIL may be a mail address to be used for RECORD.
If MAIL is an integer, use the MAILth mail address of RECORD.
If Mail is nil use the first mail address of RECORD.

\(fn RECORD &optional MAIL)" nil nil)

(autoload 'bbdb-mail "bbdb-com" "\
Compose a mail message to RECORDS (optional: using SUBJECT).
Interactively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.
By default, the first mail addresses of RECORDS are used.
If prefix N is a number, use Nth mail address of RECORDS (starting from 1).
If prefix N is C-u (t noninteractively) use all mail addresses of RECORDS.
If VERBOSE is non-nil (as in interactive calls) be verbose.

\(fn RECORDS &optional SUBJECT N VERBOSE)" t nil)

(autoload 'bbdb-completion-predicate "bbdb-com" "\
For use as the third argument to `completing-read'.
Obey `bbdb-completion-list'.

\(fn SYMBOL)" nil nil)

(autoload 'bbdb-completing-read-mails "bbdb-com" "\
Like `read-string', but allows `bbdb-complete-mail' style completion.

\(fn PROMPT &optional DEFAULT)" nil nil)

(autoload 'bbdb-complete-mail "bbdb-com" "\
In a mail buffer, complete the user name or mail before point.
Completion happens up to the preceeding newline, colon, or comma,
or the value of START-POS).
Return non-nil if there is a valid completion, else return nil.

Completion behaviour can be controlled with `bbdb-completion-list'.
If what has been typed is unique, insert an entry of the form
\"User Name <mail>\" (although see `bbdb-mail-allow-redundancy').
If it is a valid completion but not unique, a list of completions is displayed.
If the completion is done and `bbdb-complete-mail-allow-cycling' is
t then cycle through the mails for the matching record.
With prefix CYCLE-COMPLETION-BUFFER non-nil, display a list of all mails
available for cycling.

Set variable `bbdb-complete-mail' non-nil for enabling this feature
as part of the MUA insinuation.

\(fn &optional START-POS CYCLE-COMPLETION-BUFFER)" t nil)

(define-obsolete-function-alias 'bbdb-complete-name 'bbdb-complete-mail)

(autoload 'bbdb-mail-aliases "bbdb-com" "\
Define mail aliases for the records in the database.
Define a mail alias for every record that has a `mail-alias' field
which is the contents of that field.
If there are multiple comma-separated words in the `mail-alias' field,
then all of those words will be defined as aliases for that person.

If multiple records in the database have the same mail alias,
then that alias expands to a comma-separated list of the mail addresses
of all of these people.
Add this command to `mail-setup-hook'.

Mail aliases are (re)built only if `bbdb-mail-aliases-need-rebuilt' is non-nil
because the database was newly loaded or it has been edited.
Rebuilding the aliases is enforced if prefix FORCE-REBUILT is t.

\(fn &optional FORCE-REBUILT NOISY)" t nil)

(autoload 'bbdb-add-mail-alias "bbdb-com" "\
Add ALIAS to RECORD.
If pefix DELETE is non-nil, remove ALIAS from RECORD.

\(fn RECORD &optional ALIAS DELETE)" t nil)

(autoload 'bbdb-dial "bbdb-com" "\
Dial the number at point.
If the point is at the beginning of a record, dial the first phone number.
Use rules from `bbdb-dial-local-prefix-alist' unless prefix FORCE-AREA-CODE
is non-nil.  Do not dial the extension.

\(fn PHONE FORCE-AREA-CODE)" t nil)

(autoload 'bbdb-browse-url "bbdb-com" "\
Brwose URLs stored in the `url' field of RECORDS.
Interactively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.
Prefix WHICH specifies which URL in field `url' is used (starting from 0).
Default is the first URL.

\(fn RECORDS &optional WHICH)" t nil)

(autoload 'bbdb-grab-url "bbdb-com" "\
Grab URL and store it in RECORD.

\(fn RECORD URL)" t nil)

(autoload 'bbdb-copy-records-as-kill "bbdb-com" "\
Copy displayed RECORDS to kill ring.
Interactively, use BBDB prefix \\<bbdb-mode-map>\\[bbdb-do-all-records], see `bbdb-do-all-records'.

\(fn RECORDS)" t nil)

(autoload 'bbdb-info "bbdb-com" "\


\(fn)" t nil)

(autoload 'bbdb-help "bbdb-com" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (bbdb-anniv-diary-entries) "bbdb-anniv"
;;;;;;  "../lisp/bbdb-anniv.el" (20200 26995))
;;; Generated autoloads from bbdb-anniv.el

(autoload 'bbdb-anniv-diary-entries "bbdb-anniv" "\
Add anniversaries from BBDB records to `diary-list-entries'.
This obeys `calendar-date-style' via `diary-date-forms'.
To enable this feature, put the following into your .emacs:

 (add-hook 'diary-list-entries-hook 'bbdb-anniv-diary-entries)

\(fn)" nil nil)

;;;***

;;;### (autoloads (bbdb-test/run-one-test bbdb-test/run-tests bbdb-test/run-all-tests)
;;;;;;  "../testing/bbdb-test" "../testing/bbdb-test.el" (20185 25667))
;;; Generated autoloads from bbdb-test.el

(autoload 'bbdb-test/run-all-tests "bbdb-test" "\
Run all BBDB tests.

\(fn &optional BATCH)" t nil)

(autoload 'bbdb-test/run-tests "bbdb-test" "\
Run BBDB tests.

\(fn)" t nil)

(autoload 'bbdb-test/run-one-test "bbdb-test" "\


\(fn TEST-VAR)" t nil)

;;;***

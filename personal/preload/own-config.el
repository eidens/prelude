;;; startup
(setq inhibit-splash-screen t); Disable splash screen
(setq initial-scratch-message nil)
(setq initial-major-mode 'org-mode)
(server-start)

;;; gui
(global-linum-mode t); line numbers on all buffers
(global-visual-line-mode 1); Proper line wrapping
(global-hl-line-mode 1); Highlight current row
(show-paren-mode 1); Matches parentheses and such in every mode
(set-fringe-mode '(0 . 0)); Disable fringe because I use visual-line-mode
(setq visible-bell t); Flashes on error
(add-to-list 'default-frame-alist '(height . 59)); Default frame height.
(scroll-bar-mode -1)
(tool-bar-mode -1)
(setq-default indicate-empty-lines t) ; empty line markers

;;; misc
(setq calendar-week-start-day 1); Calender should start on Monday
(defalias 'yes-or-no-p 'y-or-n-p) ; way too hard to type 'yes' or 'no' on prompt
(set-language-environment "UTF-8")

;;; backups
(setq backup-directory-alist
      `(("." . "~/.emacs-backups")) ; backup to this directory instead of current
      make-backup-files t ; backup of a file the first time it is saved.
      vc-make-backup-files t ; backup files in version control too
      backup-by-copying t ; don't clobber symlinks
      version-control t ; version numbers for backup files
      delete-old-versions t ; delete excess backup files silently
      delete-by-moving-to-trash t
      kept-old-versions 6 ; oldest versions to keep when a new numbered backup is made (default: 2)
      kept-new-versions 9 ; newest versions to keep when a new numbered backup is made (default: 2)
      auto-save-default t ; auto-save every buffer that visits a file
      auto-save-timeout 20 ; number of seconds idle time before auto-save (default: 30)
      auto-save-interval 200 ; number of keystrokes between auto-saves (default: 300)
)

;;; org mode
(setq org-log-done t
      org-todo-keywords '((sequence "TODO" "INPROGRESS" "DONE"))
      org-todo-keyword-faces '(("INPROGRESS" . (:foreground "blue" :weight bold))))
(setq org-startup-indented t) ; 'clean view': headings indented, leading '*'s hidden

(setq user-emacs-directory "~/XenutsZone/EmacsLisp/")

(add-to-list 'load-path (expand-file-name "init-lisp" user-emacs-directory))

(require 'init-utils)

(add-to-list 'load-path user-emacs-directory)

(xenuts/add-subdirs-to-load-path user-emacs-directory)

(require 'ox-html)


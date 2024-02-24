
(add-hook 'after-init-hook #'(lambda ()
                               ;; restore after startup
                               (setq gc-cons-threshold 800000)))
;; (setq inhibit-startup-screen t
;;       ;;initial-scratch-message ";; ready\n\n"
;;       ;;package-user-dir "~/docs/emacs/elpa"
;;       package-archives '(("melpa" . "http://melpa.org/packages/")
;;                          ("gnu" . "http://elpa.gnu.org/packages/")))
;; (package-initialize)

;;(set-background-color "#FFCFBE")
(set-background-color "#000000")
(set-foreground-color "#FFFFFF")

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq mode-line-format nil)
(fringe-mode 0)
;; Also shrink fringes to 1 pixel.
;;(require 'package)

;
;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("melpa-stable" . "https://stable.melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

;; Fix an issue accessing the ELPA archive in Termux
;;(when dw/is-termux
;;  (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3"))

(package-initialize)
;; (unless package-archive-contents
;;   (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
 (unless (package-installed-p 'use-package)
    (package-install 'use-package))


(require 'use-package)


;; Uncomment this to get a reading on packages that get loaded at startup
;;(setq use-package-verbose t)

;; On non-Guix systems, "ensure" packages by default
;;(setq use-package-always-ensure (not dw/is-guix-system))

;; Bootstrap straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
      (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
        "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
        'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'org)

;; Always use straight to install on systems other than Linux

(setq straight-use-package-by-default (not (eq system-type 'gnu/linux)))

;; Use straight.el for use-package expressions
(straight-use-package 'use-package)

;; Load the helper package for commands like `straight-x-clean-unused-repos'
(require 'straight-x)

;; ¶Keep .emacs.d Clean
;; I don't want a bunch of transient files showing up as untracked in the Git repo so I move them all to another location.


;; Change the user-emacs-directory to keep unwanted things out of ~/.emacs.d
(setq user-emacs-directory (expand-file-name "~/.config/emacs/")
      url-history-file (expand-file-name "url/history" user-emacs-directory))

;; Use no-littering to automatically set common paths to the new user-emacs-directory
(use-package no-littering
      :straight t)

;; Keep customization settings in a temporary file (thanks Ambrevar!)
(setq custom-file
      (if (boundp 'server-socket-dir)
          (expand-file-name "custom.el" server-socket-dir)
        (expand-file-name (format "emacs-custom-%s.el" (user-uid)) temporary-file-directory)))

(load custom-file t)


(require 'subr-x)
(straight-use-package 'git)

;; (defun org-git-version ()
;;   "The Git version of org-mode.
;; Inserted by installing org-mode or when a release is made."
;;   (require 'git)
;;   (let ((git-repo (expand-file-name
;;                    "straight/repos/org/" user-emacs-directory)))
;;     (string-trim
;;      (git-run "describe"
;;               "--match=release\*"
;;               "--abbrev=6"
;;               "HEAD"))))

;; (defun org-release ()
;;   "The release version of org-mode.
;; Inserted by installing org-mode or when a release is made."
;;   (require 'git)
;;   (let ((git-repo (expand-file-name
;;                    "straight/repos/org/" user-emacs-directory)))
;;     (string-trim
;;      (string-remove-prefix
;;       "release_"
;;       (git-run "describe"
;;                "--match=release\*"
;;                "--abbrev=0"
;;                "HEAD")))))

;; (provide 'org-version)

;;(straight-use-package 'org)

(straight-use-package 'diminish)

(defun srk/org-mode-setup ()
  (org-indent-mode)
  (variable-pitch-mode 1)
  (auto-fill-mode 0)
  (visual-line-mode 1)
  (setq evil-auto-indent nil)
  (diminish org-indent-mode)
  (setcdr (assoc 'plain-list-item org-blank-before-new-entry) nil))

(use-package org
  ;;:load-path "~/.config/emacs/straight/build/org/"
 
  :hook (org-mode . srk/org-mode-setup)
  :init (setq org-replace-disputed-keys t)
  (setq org-use-extra-keys t)
  :mode ("\\.org\\'" . org-mode)
  :bind (:map org-mode-map
              ("s-j" . org-metadown)
              ("s-n" . org-metadown)
              ("s-k" . org-metaup)
              ("s-p" . org-metaup)
              ("s-f" . org-metaright)
              ("s-b" . org-metaleft)
              ("s-t" . org-todo)))

(org-babel-load-file (expand-file-name "~/.config/emacs/myinit.org"))
(put 'dired-find-alternate-file 'disabled nil)

;; how to:
;; M-x disble-theme to get rid of current theme
;; remember to change 'custom-theme-load-path
;; to find out theme name of element do M-x describe-face
;; Default = face on point
;; gpick to pick colors S-SPC to activate C-p to pick a color
;; rainbow-mode to see the colors inline
;; (hl-line-mode -1)
;; (global-hl-line-mode -1)
(dolist (i custom-enabled-themes)
  (disable-theme i))

 (defun disable-all-themes ()
  "disable all active themes."
  (dolist (i custom-enabled-themes)
    (disable-theme i)))

;; (disable-all-themes)

(require 'autothemer)

(autothemer-deftheme
 dark-8-bit-sheep "lorum ipsum"

 ((((class color) (min-colors #xFFFFFF)))

  (8bs-main-black     "#000000")
  (8bs-main-white     "#ffffff")
  (8bs-main-orange    "#a9431e")
  (8bs-main-teal      "#7badb6")
  (8bs-main-pink      "#ffcfbe")
  (8bs-lightblue      "#a7cfe1")
  (8bs-green1         "#91bc6a")
  (8bs-turquoise      "#4f988e")
  (8bs-petrol         "#165652")
  (8bs-pink2          "#f2a8b4")
  (8bs-peach          "#ed6e68")
  (8bs-red1           "#d94c34")
  (8bs-purple         "#ad5f6e")
  (8bs-yellow1        "#fecc71")
  (8bs-yellow2        "#e1a368")
  (8bs-mustard        "#e59124")
  (8bs-beige          "#b79576")
  ;;
  (8bs-gray1          "#eeeeee")
  (8bs-gray2          "#bbbbbb")
  (8bs-gray3          "#999999")
  (8bs-gray4          "#666666")
  (8bs-gray5          "#333333")
  (8bs-gray6          "#111111"))

 ;; customize faces
 ((default                        (:foreground 8bs-main-white :background 8bs-main-black))
  (cursor                         (:background 8bs-turquoise))
  (isearch                        (:background 8bs-turquoise))
  (fringe                         (:background 8bs-main-black))
  (region                         (:background 8bs-main-teal))
  (minibuffer-promt               (:foreground 8bs-main-pink :background 8bs-turquoise))
  (escape-glyph                   (:foreground 8bs-red1))
  (homoglyph                      (:foreground 8bs-red1))
  (secondary-selection            (:foreground 8bs-red1))
  (isearch                        (:foreground 8bs-red1))
  (linum                          (:foreground 8bs-red1))
  (lazy-highlight                 (:foreground 8bs-red1))
  ;; Mode line faces
  (mode-line                      (:foreground 8bs-main-teal))
  (mode-line-inactive             (:foreground 8bs-gray3))
  ;; Escape and prompt faces
  (minibuffer-prompt              (:foreground 8bs-green1))
  (escape-glyph                   (:foreground 8bs-red1))
  (homoglyph                      (:foreground 8bs-red1))
  ;; Help faces
  (help-key-binding               (:foreground 8bs-red1))
  ;; Button and link faces
  (link                           (:foreground 8bs-green1))
  (link-visited                   (:foreground 8bs-red1))
  (button                         (:foreground 8bs-main-teal))
  (header-line                    (:foreground 8bs-red1))
  ;;
  (flycheck-info                  (:foreground 8bs-main-teal))
  ;; font-lock faces
  (font-lock-type-face            (:foreground 8bs-main-orange))
  (font-lock-variable-name-face   (:foreground 8bs-red1))
  (font-lock-warning-face         (:foreground 8bs-red1))
  (font-lock-keyword-face         (:foreground 8bs-main-teal))
  (font-lock-function-name-face   (:foreground 8bs-main-pink))
  (font-lock-builtin-face         (:foreground 8bs-main-teal))
  (font-lock-constant-face        (:foreground 8bs-green1))
  (font-lock-string-face           (:foreground 8bs-main-pink))
  (font-lock-comment-face         (:foreground 8bs-gray3))
  ;; rainbow delimiters
  (rainbow-delimiters-depth-1-face     (:foreground 8bs-main-orange))
  (rainbow-delimiters-depth-2-face     (:foreground 8bs-main-teal))
  (rainbow-delimiters-depth-3-face     (:foreground 8bs-main-pink))
  (rainbow-delimiters-depth-4-face     (:foreground 8bs-red1))
  (rainbow-delimiters-depth-5-face     (:foreground 8bs-yellow1))
  (rainbow-delimiters-depth-6-face     (:foreground 8bs-lightblue))
  (rainbow-delimiters-depth-7-face     (:foreground 8bs-yellow2))
  (rainbow-delimiters-depth-8-face     (:foreground 8bs-green1))

  ;; 
  (bookmark-face     (:background 8bs-red1))
  ;;
  (elfeed-search-feed-face (:foreground  8bs-green1))
  (elfeed-search-tag-face (:foreground  8bs-main-teal))
  (elfeed-log-date-face (:foreground  8bs-main-orange))
  
  


  ;; (magit-header-line (:foreground "#ffffff" :background "#000000"))
  ;; ;;   "Face for the `header-line' in some Magit modes.
  ;; ;; Note that some modes, such as `magit-log-select-mode', have their
  ;; ;; own faces for the `header-line', or for parts of the
  ;; ;; `header-line'."

  ;; (magit-header-line-key (:foreground "#ffffff" :background "#000000"))
  ;; ;; "Face for keys in the `header-line'."

  ;; (magit-dimmed (:foreground "#ffffff" :background "#000000"))
  ;; ;; "Face for text that shouldn't stand out."

  ;; (magit-hash (:foreground "#ffffff" :background "#000000"))
  ;; ;; "Face for the sha1 part of the log output."

  ;; (magit-tag (:foreground "#ffffff" :background "#000000"))
  ;; ;; "Face for tag labels shown in log buffer."

  ;; (magit-branch-remote (:foreground "#ffffff" :background "#000000"))
  ;; ;; "Face for remote branch head labels shown in log buffer."

  ;; (defface magit-branch-remote-head
  ;;   '((((supports (:box t))) :inherit magit-branch-remote :box t)
  ;;     (t                     :inherit magit-branch-remote :inverse-video t))
  ;;   "Face for current branch."
  ;;   :group 'magit-faces)

  ;; (defface magit-branch-local
  ;;   '((((class color) (background light)) :foreground "SkyBlue4")
  ;;     (((class color) (background  dark)) :foreground "LightSkyBlue1"))
  ;;   "Face for local branches."
  ;;   :group 'magit-faces)

  ;; (defface magit-branch-current
  ;;   '((((supports (:box t))) :inherit magit-branch-local :box t)
  ;;     (t                     :inherit magit-branch-local :inverse-video t))
  ;;   "Face for current branch."
  ;;   :group 'magit-faces)

  ;; (defface magit-branch-upstream
  ;;   '((t :slant italic))
  ;;   "Face for upstream branch.
  ;; This face is only used in logs and it gets combined
  ;;  with `magit-branch-local', `magit-branch-remote'
  ;; and/or `magit-branch-remote-head'."
  ;;   :group 'magit-faces)

  ;; (defface magit-branch-warning
  ;;   '((t :inherit warning))
  ;;   "Face for warning about (missing) branch."
  ;;   :group 'magit-faces)

  ;; (defface magit-head
  ;;   '((((class color) (background light)) :inherit magit-branch-local)
  ;;     (((class color) (background  dark)) :inherit magit-branch-local))
  ;;   "Face for the symbolic ref `HEAD'."
  ;;   :group 'magit-faces)

  ;; (defface magit-refname
  ;;   '((((class color) (background light)) :foreground "grey30")
  ;;     (((class color) (background  dark)) :foreground "grey80"))
  ;;   "Face for refnames without a dedicated face."
  ;;   :group 'magit-faces)

  ;; (defface magit-refname-stash
  ;;   '((t :inherit magit-refname))
  ;;   "Face for stash refnames."
  ;;   :group 'magit-faces)

  ;; (defface magit-refname-wip
  ;;   '((t :inherit magit-refname))
  ;;   "Face for wip refnames."
  ;;   :group 'magit-faces)

  ;; (defface magit-refname-pullreq
  ;;   '((t :inherit magit-refname))
  ;;   "Face for pullreq refnames."
  ;;   :group 'magit-faces)

  ;; (defface magit-keyword
  ;;   '((t :inherit font-lock-string-face))
  ;;   "Face for parts of commit messages inside brackets."
  ;;   :group 'magit-faces)

  ;; (defface magit-keyword-squash
  ;;   '((t :inherit font-lock-warning-face))
  ;;   "Face for squash! and fixup! keywords in commit messages."
  ;;   :group 'magit-faces)

  ;; (defface magit-signature-good
  ;;   '((t :foreground "green"))
  ;;   "Face for good signatures."
  ;;   :group 'magit-faces)

  ;; (defface magit-signature-bad
  ;;   '((t :foreground "red" :weight bold))
  ;;   "Face for bad signatures."
  ;;   :group 'magit-faces)

  ;; (defface magit-signature-untrusted
  ;;   '((t :foreground "medium aquamarine"))
  ;;   "Face for good untrusted signatures."
  ;;   :group 'magit-faces)

  ;; (defface magit-signature-expired
  ;;   '((t :foreground "orange"))
  ;;   "Face for signatures that have expired."
  ;;   :group 'magit-faces)

  ;; (defface magit-signature-expired-key
  ;;   '((t :inherit magit-signature-expired))
  ;;   "Face for signatures made by an expired key."
  ;;   :group 'magit-faces)

  ;; (defface magit-signature-revoked
  ;;   '((t :foreground "violet red"))
  ;;   "Face for signatures made by a revoked key."
  ;;   :group 'magit-faces)

  ;; (defface magit-signature-error
  ;;   '((t :foreground "light blue"))
  ;;   "Face for signatures that cannot be checked (e.g. missing key)."
  ;;   :group 'magit-faces)

  ;; (defface magit-cherry-unmatched
  ;;   '((t :foreground "cyan"))
  ;;   "Face for unmatched cherry commits."
  ;;   :group 'magit-faces)

  ;; (defface magit-cherry-equivalent
  ;;   '((t :foreground "magenta"))
  ;;   "Face for equivalent cherry commits."
  ;;   :group 'magit-faces)

  ;; (defface magit-filename
  ;;   '((t :weight normal))
  ;;   "Face for filenames."
  ;;   :group 'magit-faces)


  
  ;;   ;;
  ;; org-mode
  (org-document-title  (:foreground 8bs-main-white))
  (org-document-info   (:foreground 8bs-gray4))
  (org-meta-line       (:foreground 8bs-gray4))
  (org-link            (:foreground 8bs-green1))
  (org-block-begin-line  (:foreground 8bs-green1))
  (org-date (:foreground 8bs-green1))
  ;;
  (org-level-1     (:foreground 8bs-main-teal))
  (org-level-2     (:foreground 8bs-main-white))
  (org-level-3     (:foreground 8bs-main-orange))
  (org-level-4     (:foreground 8bs-red1))
  (org-level-5     (:foreground 8bs-lightblue))
  (org-level-6     (:foreground 8bs-yellow2))
  (org-level-7     (:foreground 8bs-green1))
;;   ;;
;;   ; mu4e
;;   (mu4e-header-key-face     (:foreground 8bs-yellow1))
;;   (mu4e-contact-face        (:foreground 8bs-main-orange))jxb

;;   ;; magit
;;   (magit-section-highlight (:background 8bs-yellow2 :foreground "#000000"))
;; w3m
  (w3m-current-anchor (:foreground 8bs-main-teal))
  (w3m-anchor (:foreground 8bs-lightblue))
  (w3m-form (:foreground 8bs-main-pink))
  (w3m-insert (:foreground 8bs-main-pink))
  (w3m-header-line-title (:foreground 8bs-turquoise))
  (w3m-header-line-content (:foreground 8bs-green1))

  ;; slack
  (slack-message-output-header (:foreground 8bs-main-teal))
  (slack-new-message-marker-face (:foreground 8bs-peach))
  (lui-button-face  (:foreground 8bs-main-pink))
  (lui-time-stamp-face (:foreground 8bs-lightblue))
;;
  ))






;;(set-face-attribute 'fringe nil :background "#000000"  :foreground  "#000000")
(custom-theme-set-variables
 'dark-8-bit-sheep
 '(ansi-color-names-vector ["#000000" "#a94313" "#165652" "#91bc6a"
			    "#a7cfe1" "#333366" "#fecc71" "#ffffff"]))

(provide-theme 'dark-8-bit-sheep)


;;   (8bs-main-orange    "#a9431e")
;;   (8bs-main-teal      "#7badb6")
;;   (8bs-main-pink      "#ffcfbe")
;;   (8bs-yellow1        "#fecc71")
;;   (8bs-red1           "#d94c34")
;;   (8bs-petrol         "#165652")
;;   (8bs-lightblue      "#a7cfe1")
;;   (8bs-yellow2        "#e1a368")
;;   (8bs-green1         "#91bc6a")

;;   (8bs-peach          "#ed6e68")
;;   (8bs-turquoise      "#4f988e")
;;   (8bs-purple         "#ad5f6e")
;;   (8bs-mustard        "#e59124")
;;   (8bs-pink2          "#f2a8b4")
;;   (8bs-beige          "#b79576")


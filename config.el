;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Dmytro Shcherbatiuk"
      user-mail-address "dima.scherbatyuk@gmail.com")

(setq baby-blue '("#d2ecff" "#d2ecff" "brightblue"))

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;;(setq doom-font (font-spec :family "monospace" :size 15))
;(setq doom-font (font-spec :family "monospace" :size 15 :weight 'semi-light)
 ;     doom-variable-pitch-font (font-spec :family "sans" :size 13))

;(setq doom-font (font-spec :family "Fira Code" :size 24 :weight 'semi-light)
 ;    doom-variable-pitch-font (font-spec :family "Fira Code" :size 24))

                                        ;(setq doom-font (font-spec :family "JetBrains Mono" :size 24)
;      doom-big-font (font-spec :family "JetBrains Mono" :size 36)
;      doom-variable-pitch-font (font-spec :family "Overpass" :size 24)
;      doom-serif-font (font-spec :family "IBM Plex Mono" :weight 'light))

;(setq doom-font (font-spec :family "Mononoki Nerd Font" :size 15)
;      doom-variable-pitch-font (font-spec :family "Ubuntu" :size 15)
;      doom-big-font (font-spec :family "Mononoki Nerd Font" :size 24))
;(setq doom-font (font-spec :family ".AppleSystemUIFont" :size 15)
;      doom-variable-pitch-font (font-spec :family ".AppleSystemUIFont" :size 15)
;      doom-big-font (font-spec :family ".AppleSystemUIFont" :size 24))
(setq doom-font (font-spec :family "Iosevka Term SS04" :size 24 :weight 'light)
      doom-big-font (font-spec :family "Iosevka Term SS04" :size 36)
      doom-variable-pitch-font (font-spec :family "SF Pro Text"))

;(after! doom-themes
;  (setq doom-themes-enable-bold t
;        doom-themes-enable-italic t))
;(custom-set-faces!
;  '(font-lock-comment-face :slant italic)
;  '(font-lock-keyword-face :slant italic))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-gruvbox-light)
;;(setq doom-theme 'sanityinc-tomorrow-eighties)
(setq doom-theme 'sanityinc-tomorrow-bright)
;; (setq doom-theme 'zaiste)
;; (setq doom-theme 'doom-one)
;;(setq doom-theme 'doom-acario-light)
;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/"
      org-hide-block-startup t)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; Start fullscreen (cross-platf)
(add-hook 'window-setup-hook 'toggle-frame-fullscreen t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.
;; (custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;;  '(ansi-color-names-vector
;;    ["#FFFBEA" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#556b72"])
;;  '(fci-rule-color "#D6D6D6")
;;  '(jdee-db-active-breakpoint-face-colors (cons "#FFFBF0" "#268bd2"))
;;  '(jdee-db-requested-breakpoint-face-colors (cons "#FFFBF0" "#859900"))
;;  '(jdee-db-spec-breakpoint-face-colors (cons "#FFFBF0" "#E1DBCD"))
;;  '(objed-cursor-color "#dc322f")
;;  '(package-selected-packages
;;    (quote
;;     (helm-bitbucket bitbucket org-gcal yaml-mode lsp-mssql lsp-java flycheck-yamllint)))
;;  '(pdf-view-midnight-colors (cons "#556b72" "#FDF6E3"))
;;  '(rustic-ansi-faces
;;    ["#FDF6E3" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#556b72"])
;;  '(vc-annotate-background "#FDF6E3")
;;  '(vc-annotate-color-map
;;    (list
;;     (cons 20 "#859900")
;;     (cons 40 "#959300")
;;     (cons 60 "#a58e00")
;;     (cons 80 "#b58900")
;;     (cons 100 "#bc7407")
;;     (cons 120 "#c35f0e")
;;     (cons 140 "#cb4b16")
;;     (cons 160 "#cd4439")
;;     (cons 180 "#d03d5d")
;;     (cons 200 "#d33682")
;;     (cons 220 "#d63466")
;;     (cons 240 "#d9334a")
;;     (cons 260 "#dc322f")
;;     (cons 280 "#dd5c56")
;;     (cons 300 "#de867e")
;;     (cons 320 "#dfb0a5")
;;     (cons 340 "#D6D6D6")
;;     (cons 360 "#D6D6D6")))
;;  '(vc-annotate-very-old-color nil))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )

;; Set default browser as default OS X browser
(setq browse-url-browser-function 'browse-url-default-macosx-browser)

(setq ediff-window-setup-function 'ediff-setup-windows-plain)

(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu/mu4e")
;;(require 'smtpmail)
(setq user-mail-address "dima.scherbatyuk@gmail.com"
      user-full-name  "Dmytro Shcherbatiuk"
      ;; I have my mbsyncrc in a different folder on my system, to keep it separate from the
      ;; mbsyncrc available publicly in my dotfiles. You MUST edit the following line.
      ;; Be sure that the following command is: "mbsync -c ~/.config/mu4e/mbsyncrc -a"
      mu4e-get-mail-command "mbsync -c ~/.config/mu4e/mbsyncrc -a"
      mu4e-update-interval  300
      mu4e-main-buffer-hide-personal-addresses t
      message-send-mail-function 'smtpmail-send-it
      starttls-use-gnutls t
      smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
      mu4e-sent-folder "/account-1/Sent"
      mu4e-drafts-folder "/account-1/Drafts"
      mu4e-trash-folder "/account-1/Trash"
      mu4e-maildir-shortcuts
      '(("/account-1/Inbox"      . ?i)
        ("/account-1/Sent Items" . ?s)
        ("/account-1/Drafts"     . ?d)
        ("/account-1/Trash"      . ?t)))

;; Magit
;; submodules
(with-eval-after-load 'magit
  (magit-add-section-hook 'magit-status-sections-hook
                          'magit-insert-modules
                          'magit-insert-unpulled-from-upstream)
  (setq magit-module-section-nested nil))

(setq org-startup-folded t)

;; Support babel
(org-babel-do-load-languages
 'org-babel-load-languages
 '((restclient . t)))

;; Enable folding
(setq lsp-enable-folding t)

;; Add origami and LSP integration
(use-package! lsp-origami)
(add-hook! 'lsp-after-open-hook #'lsp-origami-try-enable)

(map! :
      :desc "LSP execute code action"
      "M-RET" #'lsp-execute-code-action)
(map! :
      :desc "LSP execute code action"
      "<S-f6>" #'lsp-rename)
;; M-/
(map! : "÷" #'comment-line)
(map! : "<S-f9>" #'switch-to-buffer)
;; (map! :leader es i" #'search-)
(map! : "–" #'origami-close-node)
(map! : "≠" #'origami-open-node)

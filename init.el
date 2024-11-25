;┌┐ Emacs config file ┌─────────────────────────────────────────────────────────
;└┴───────────────────┘

;┌┐ Package Management: ┌───────────────────────────────────────────────────────
;└┴─────────────────────┘

; Load Package Manager
(require 'package)

; Add Melpa Package repository
(add-to-list
  'package-archives
    '("melpa" . "https://melpa.org/packages/"))

; Initialize Package Manager
(package-initialize)

(unless (file-exists-p package-user-dir)
  (message "Refreshing package list cache")
  (package-refresh-contents))

;┌┐ Org-Loading MainCFG: ┌──────────────────────────────────────────────────────
;└┴──────────────────────┘
(require 'org)
(when (string-match "^[1234567]" (org-version))
  (warn "Org-Mode is out of date. We expect org 8 or higher, but instead we have %s" (org-version)))

;;;(setq org-babel-confirm-evaluate nil)
(org-babel-load-file "~/.emacs.d/emacs.org")
;;;(setq org-babel-confirm-evaluate t)


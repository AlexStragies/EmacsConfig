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

;;;(require 'ob-sh)
;;;(defadvice org-babel-sh-evaluate (around set-shell activate)
;;;  "Add header argument :shcmd that determines the shell to be called."
;;;  (let* ((org-babel-sh-command (or (cdr (assoc :shcmd params)) org-babel-sh-command)))
;;;    ad-do-it
;;;    ))

;;;(setq org-babel-confirm-evaluate nil)
(org-babel-load-file "~/.emacs.d/emacs.org")
;;;(setq org-babel-confirm-evaluate t)

;;; stuff added by Emacs:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-dictionary-files (quote ("~/.dict ~/.emacs.d/ac-dict/usernames.dict")))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(js-indent-level 2 t)
 '(org-pretty-entities t)
 '(package-selected-packages
   (quote
    (magit org key-chord linum-relative auto-complete buffer-move helm highlight-indentation evil-surround evil-matchit evil-leader ztree vimish-fold emmet-mode yasnippet-snippets yasnippet rainbow-mode org-evil)))
 '(ps-bottom-margin 18)
 '(ps-font-size (quote (7 . 12)))
 '(ps-paper-type (quote a4))
 '(ps-top-margin 18)
 '(show-paren-mode t)
 '(tab-width 2)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

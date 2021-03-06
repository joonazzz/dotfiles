; To make sure files with extension .org use Org mode, add the following line to your .emacs file.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

; Global keybindings, which are available outside org-mode
     (global-set-key "\C-cl" 'org-store-link)
     (global-set-key "\C-cc" 'org-capture)
     (global-set-key "\C-ca" 'org-agenda)
     (global-set-key "\C-cb" 'org-iswitchb)

; Many commands in Org work on the region if the region is active. To make use of this, you need to have transient-mark-mode (zmacs-regions in XEmacs) turned on. In Emacs 23 this is the default, in Emacs 22 you need to do this yourself with
(transient-mark-mode 1)

; Add TODO item states
(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "IN PROGRESS(n)" "|" "DONE(d)"))))


(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("IN PROGRESS" :foreground "orange" :weight bold)
              ("DONE" :foreground "forest green" :weight bold))))

(setq org-agenda-files (list "~/Dropbox/org/home.org"
      		       	     "~/Dropbox/org/work.org"
			     "~/Dropbox/org/school.org"))
      		       	     
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/Dropbox/org/home.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
; Word wrapping stuff
(setq-default word-wrap t)
(setq-default truncate-lines 1)

; List of my agenda files
(setq org-agenda-files (list "~/org/work.org"
                             ))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/Dropbox/org/org4beginners/1.org" "~/org/home.org"))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

; Org-mode
(setq org-todo-keywords
  '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))

(setq org-tag-alist '(("@work" . ?w) ("@home" . ?h) ("laptop" . ?l)))

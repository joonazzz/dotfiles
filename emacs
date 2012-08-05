; To make sure files with extension .org use Org mode, add the following line to your .emacs file.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

; Global keybindings, which are available outside org-mode
     (global-set-key "\C-cl" 'org-store-link)
     (global-set-key "\C-cc" 'org-capture)
     (global-set-key "\C-ca" 'org-agenda)
     (global-set-key "\C-cb" 'org-iswitchb)

; Many commands in Org work on the region if the region is active. To make use of this, you need to have transient-mark-mode (zmacs-regions in XEmacs) turned on. In Emacs 23 this is the default, in Emacs 22 you need to do this yourself with
(transient-mark-mode 1)


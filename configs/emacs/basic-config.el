;;-- BASIC CONFIGURATION --------------------------------------------------------------------------------
(defvar poli/tmp_folder (expand-file-name "tmp" user-emacs-directory))

; Remove startup message
(setq inhibit-startup-message t)    ; Remove startup message

;; In MacOS change option for command (to keep things the same)
(if (eq system-type 'darwin)
    (setq mac-command-modifier 'meta
          mac-option-modifier nil
          mac-control-modifier 'control
          mac-right-command-modifier 'super
          mac-right-control-modifier 'control))

; Disable sound bell (except on mac, visual is horrible)
(if (not (eq system-type 'darwin))
  (setq visible-bell t))               

(scroll-bar-mode -1)                ; Disable scrollbar
(tool-bar-mode -1)                  ; Disable toolbar
(tooltip-mode -1)                   ; Disable tooltip
(menu-bar-mode -1)                  ; Disable menubar
(set-fringe-mode '(10 . 10))        ; Set left and right margin in pixels

;; Enable line numbers
(column-number-mode)
(global-display-line-numbers-mode t)
(setq display-line-numbers-type 'relative)

;; Disable line numners for some modes
(dolist (mode '(
                term-mode-hook
                dired-mode-hook
                shell-mode-hook
                treemacs-mode-hook))
        (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; Tab configuration
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; (savehist-mode 1)
(use-package savehist
  :elpaca nil
  :init
  (savehist-mode))

; Create another tmp directory for auto-saave files
(make-directory poli/tmp_folder t)

; Create a tmp folder inside emacs config so all the backup files go there
(setq backup-directory-alist `(("." . ,(expand-file-name "backups/" poli/tmp_folder))))

; Set auto-saves to be store in the new folder
(setq auto-save-list-file-prefix (expand-file-name "auto-saves/session" poli/tmp_folder)
    auto-save-file-name-transforms `((".*" ,(expand-file-name "auto-saves/" poli/tmp_folder) t)))

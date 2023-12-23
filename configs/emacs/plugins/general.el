;; General leader key configuration

(use-package general
  :demand t
  :after evil
  :config
  (general-evil-setup)
  ;; integrate general with evil

  ;; set up 'SPC' as the global leader key
  (general-create-definer poli/leader-keys
    :states '(normal insert visual emacs)
    :keymaps 'override
    :prefix "SPC" ;; set leader
    :global-prefix "M-SPC") ;; access leader in insert mode
)

;; Wait until everything loads up to start defining shortcuts
(elpaca-wait)

;; Shortcuts definition
(poli/leader-keys
  "w" '(save-buffer :wk "Save File")
  "ff" '(consult-fd :wk "consult find")
  "fp" '(consult-ripgrep :wk "consult grep")
  "fu" '(consult-buffer :wk "consult find")
)

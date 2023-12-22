; Evil Mode
(use-package evil
  :demand t
  :init
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t)
  :config
  ;; Evil Startup
  (evil-mode)
  ;; Evil config
  (evil-set-undo-system 'undo-redo)
  ;; Evil keybindings
  (define-key evil-insert-state-map (kbd "C-g") 'evil-normal-state)
  ;(define-key evil-insert-state-map (kbd "TAB") 'tab-to-tab-stop)
  (evil-set-initial-state 'slime-repl-mode 'emacs))

;; Evil Collections
;; -----------------------------------------------
(use-package evil-collection
    :after evil
    :config
    (evil-collection-init))

(use-package evil-commentary
  :after evil
  :config
  (evil-commentary-mode)) ;; globally enable evil-commentary

(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1)
  (add-hook 'emacs-lisp-mode-hook (lambda ()
                                (push '(?` . ("`" . "'")) evil-surround-pairs-alist))))

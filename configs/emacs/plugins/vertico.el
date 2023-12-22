; VERTical Iteractive Completion Framework
(use-package vertico
  :demand t
  :bind (:map vertico-map
          ("C-j" . vertico-next)
          ("C-k" . vertico-previous)
          ("C-q" . vertico-exit))
  :config
  (vertico-mode 1))

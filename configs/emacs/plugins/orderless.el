;; Orderless
;; Better matching for vertico
;; -----------------------------------------------
(use-package orderless
    :after vertico
    :custom
    (completion-styles '(orderless basic))
    (completion-category-overrides '((file (styles basic partial-completion)))))

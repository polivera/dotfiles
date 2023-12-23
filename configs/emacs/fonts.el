; Set fonts for emacs
(cond
  ((eq system-type 'darwin) ;; MacOS
    (set-face-attribute 'default nil :font "IosevkaTerm Nerd Font" :height 145)
    (set-face-attribute 'fixed-pitch nil :font "IosevkaTerm Nerd Font" :height 145)
    (set-face-attribute 'variable-pitch nil :font "IosevkaTerm Nerd Font" :height 145))
  (t ;; Other OS (I use linux btw)
    (set-face-attribute 'default nil :font "IosevkaTerm Nerd Font" :height 110)
    (set-face-attribute 'fixed-pitch nil :font "IosevkaTerm Nerd Font" :height 120)
    (set-face-attribute 'variable-pitch nil :font "IosevkaTerm Nerd Font" :height 140)))

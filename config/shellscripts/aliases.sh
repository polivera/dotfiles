# ls modifications
alias ls='exa --icons --color always --group-directories-first'
alias ll='ls -l'
alias lt='ls -l --tree --git-ignore'
alias la='ls -a'
alias lla='ll -a'

# visudo weird immitation
alias vialias='$EDITOR $XDG_CONFIG_HOME/shellscripts/aliases.sh'
alias vizshrc='$EDITOR $HOME/.zshrc'
alias vizshenv='$EDITOR $HOME/.zshenv'
alias srcrc='source $HOME/.zshrc'

# pacman
alias pm='sudo pacman'

# openconnect
alias opc-csd='sudo openconnect --csd-wrapper=/usr/lib/openconnect/csd-post.sh'
alias opc='sudo openconnect'

# git
alias gad='git add'
alias gac='git add . && git commit'
alias gst='git status'
alias gcm='git commit'

# ls modifications
alias ls='ls -l -h --color --group-directories-first'
alias la='ls -a'

# visudo weird immitation
alias vialias='$EDITOR $XDG_CONFIG_HOME/shellscripts/aliases.sh'
alias vizshrc='$EDITOR $HOME/.zshrc'
alias vizshenv='$EDITOR $HOME/.zshenv'
alias srcrc='source $HOME/.zshrc'

# pacman
alias pm='sudo pacman'
alias opc-csd='sudo openconnect --csd-wrapper=/usr/lib/openconnect/csd-post.sh'
alias opc='sudo openconnect'


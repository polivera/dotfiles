# ls modifications
if [[ -x /usr/bin/exa ]]; then
  alias ls='exa --icons --color always --group-directories-first'
  alias lt='ls -l --tree --git-ignore'
else
  alias ls='ls --color --group-directories-first'
  alias lt='tree'
fi
alias ll='ls -l'
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
alias gpo='git push origin'
alias gpu='git push upstream'

# Creact
alias init-react-app='npm i react react-dom && npm i -D webpack webpack-cli webpack-dev-server html-webpack-plugin @babel/core babel-loader @babel/preset-env @babel/preset-react'


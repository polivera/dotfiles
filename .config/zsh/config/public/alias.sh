#!/usr/bin/env zsh

alias reload-zsh="source $ZDOTDIR/.zshrc"
alias vialias="$EDITOR $ZDOTDIR/config/public/alias.sh"

case "$XAP_OS" in
macos)
	alias ls="gls -l --color --group-directories-first -h"
  alias subl="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
	;;
arch|fedora)
	alias open="xdg-open"
  alias subl="echo 'not set yet'"
  alias pbcopy="xclip -sel clip"
	;;
esac

if command -v exa &>/dev/null; then
	alias ls="exa -l --group-directories-first -h -g --no-time --git --sort name"
fi

if command -v bat &>/dev/null; then
	alias cat='bat'
    alias less='bat --paging=always'
fi

# NeoVim
alias nv='nvim'
alias v='nvim'
alias vim='nvim'
alias nvnew='NVIM_APPNAME=nvim-new nvim'

# Grep
alias grep='grep --color=auto'

# TMux
alias tx='tmux'
alias txa='tmux attach'

# LS
alias ll="ls -lhg"
alias la="ls -ah"
alias lla="ll -ahg"

# Tree
alias lt="tree"

# Git
alias ga="git add"
alias gst="git status"
alias gcm="git commit"
alias gcl="git clone"
alias gch="git checkout"
alias gaa="git add ."
alias gpl="git pull"
alias gps="git push"
alias gplo="git pull origin"
alias gpso="git push origin"
alias gstash="git stash"
alias gdf="git diff"
alias glog="git log"
alias gw="git worktree"
alias gbranch-clean="git branch -vv | grep ': gone' | awk '{print \$1}' | xargs -r git branch -D"

# Docker
alias d="docker"
alias dps="docker ps --format \"{{.ID}} {{.Names}} {{.Ports}}\""
alias dc="docker compose"
alias dcu="docker compose up -d"
alias dcur="docker compose up -d --force-recreate"
alias dcurb="docker compose up -d --force-recreate --build"
alias dx="docker context"
alias dexec="docker exec -it"
alias dsrm="docker stack rm"

# Kubernetes
alias k="kubectl"
alias kgn="kubectl get nodes"
alias kgp="kubectl get pods"
alias kgs="kubectl get service"
alias kpf="kubectl port-forward"

# Terraform
alias tfi="terraform init"
alias tfp="terraform plan"
alias tfa="terraform apply"

# Misc
alias expofz="export | fzf"
alias selclip="xclip -sel clip"

# PHP 
alias artisan-debug="XDEBUG_SESSION_START=1 php artisan"
alias artisan="php artisan"
alias php-debug="XDEBUG_SESSION_START=1 php"

# Python
alias pyactivate="source ./.venv/bin/activate"

# Arch Pacman
if [[ "$XAP_OS" = "arch" ]]; then
	alias mirror-refresh="sudo reflector --country Spain,Germany,France,England --age 24 --protocol http,https --sort rate --save /etc/pacman.d/mirrorlist"
	alias pm="sudo pacman"
	alias pmss="sudo pacman -Ss"
	alias pms="sudo pacman -S"
	alias yays="yay -S"
	alias yayss="yay -Ss"
fi

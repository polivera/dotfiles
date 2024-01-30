#!/usr/bin/env bash

# OS specific configuration
case "$POLI_OS_TYPE" in
macos)
	alias add-my-user-to-group="dseditgroup -o edit -a $(whoami) -t user"
	;;
linux)
	if command -v xdg-open &>/dev/null; then
		alias open="xdg-open"
	fi
	;;
wsl) ;;

esac
# END

if command -v eza &>/dev/null; then
	alias ls="eza --group-directories-first --icons"
elif command -v exa &>/dev/null; then
	alias ls="exa --group-directories-first --icons"
else
	case "$POLI_OS_TYPE" in
	macos)
		if command -v gls &>/dev/null; then
			alias ls="gls --color --group-directories-first"
		else
			echo "Remember to install coreutils (brew install coreutils)"
			alias ls="ls -G"
		fi
		;;
	linux | windows)
		alias ls="ls --color --group-directories-first"
		;;
	esac
fi

# Command aliases
if command -v bat &>/dev/null; then
	alias cat='bat'
elif command -v batcat &>/dev/null; then
  alias cat='batcat'
fi
alias grep='grep --color=auto'
alias tx='tmux'
alias txa='tmux attach'

# SSH with kitty
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

# ls aliases
if command -v tree &>/dev/null; then
	alias lt="tree"
else
	alias lt="echo 'You need to install tree to run this command'"
fi
alias ll="ls -lhg"
alias la="ls -ah"
alias lla="ll -ahg"

# Misc
alias reload-zsh="source $ZDOTDIR/.zshrc"
alias vialias="$EDITOR $ZDOTDIR/configs/public/alias.sh"
alias nvim-config="$EDITOR $HOME/.config/nvim/"
alias nv="nvim ."
alias nvim="nvim ."
# GPG with proper tty
# GPG_TTY environment variable some times does not act properly
# this is a workaround
alias gpg="GPG_TTY=$(tty) gpg"


if [[ "$POLI_OS_NAME" = "arch" ]]; then
	# Arch linux (see how to put this in a conditional)
	alias pm="sudo pacman"
	alias pmss="sudo pacman -Ss"
	alias pms="sudo pacman -S"
	alias yays="yay -S"
	alias yayss="yay -Ss"
fi

if [[ "$POLI_OS_NAME" = "fedora" ]]; then
	# Fedora (shoud be in conditional as well)
	alias dni="sudo dnf install"
	alias dns="sudo dnf search"
fi

# Git aliases
if command -v git &>/dev/null; then
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
fi

# Misc devtools
alias lz="lazygit"
alias pg="pgcli"
alias pgu="pgcli -h localhost -u"
alias mcl="mycli"
alias mclu="mycli -h localhost -u"

# Kubernetes
alias k="kubectl"
alias kga="kubectl get all"

# Docker
alias d="docker"
alias dps="docker ps"
alias dc="docker compose"
alias dcu="docker compose up -d"
alias dcur="docker compose up -d --force-recreate"
alias dcurb="docker compose up -d --force-recreate --build"
alias dx="docker context"
alias dexec="docker exec -it"

# Paths
alias goto-project-personal="cd $HOME/Projects/Personal/"

# PHP
alias php="php -c /etc/php"
alias phpa="php artisan"

# Go
alias gounit="go test -tags=unit -v"

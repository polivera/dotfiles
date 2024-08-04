#!/usr/bin/env zsh

source <(fzf --zsh)

xap_fzf_preview() {
	case "$(file --mime "$1" | awk '{print $2}')" in
	"inode/directory;") ls -la "$1" ;;
	"text/plain;") bat --style=numbers --color=always "$1" ;;
	*) echo "can't recognize format" ;;
	esac
}

export FZF_DEFAULT_OPTS="--tmux 80% --inline-info --preview 'xap_fzf_preview {}'"

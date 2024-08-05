#!/usr/bin/env zsh

source <(fzf --zsh)

export FZF_DEFAULT_OPTS="--tmux 80% --inline-info --preview 'xap-previewer.sh {}'"

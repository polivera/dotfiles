#!/usr/bin/env zsh

autoload -Uz add-zsh-hook
# add-zsh-hook precmd xap_check_tunnel

# Ensure autocompletion is enabled
autoload -U compinit
compinit

# Enable case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'm:{A-Z}={a-z}'
zstyle ':completion:*' menu select

# Enable case-insensitive globbing and matching
# setopt nocaseglob
# setopt nocasematch

# Allow partial-word matches
zstyle ':completion:*' completer _complete _match

# Apply case-insensitivity to all tab completions
zstyle ':completion:*' list-colors ''
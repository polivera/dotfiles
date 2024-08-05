#!/usr/bin/env zsh

# Ctrl + Arrows (left and right)
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Custom scripts
bindkey -s "^P" "tmux-sessionizer.sh\n"

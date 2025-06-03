#!/usr/bin/env zsh

# Ctrl + Arrows (left and right)
if [[ "$XAP_OS" != "macos" ]]; then
	bindkey "^[[1;5C" forward-word
	bindkey "^[[1;5D" backward-word
fi

# Custom scripts
bindkey -s "^P" "tmux-sessionizer.sh\n"

# Re-execute last executed command
bindkey '^N' history-beginning-search-backward

# Kill stuff
bindkey -s "^K" "kill -9 **\t"

# Show environment variables
bindkey -s "^E" "expofz\n"

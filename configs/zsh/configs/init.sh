#!/usr/bin/env zsh

# First include base configuration for zsh
source $ZDOTDIR/configs/zshconf.sh

# Include functions
source $ZDOTDIR/configs/functions.sh

# Don't know
export GPG_TTY=$(tty)

# Export XAP_OS file
check_os

# Plugins
# FIX: These throws a lot of warnings when enabled
# add_git_plugin
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"

# Include public config
zsh_add_folder $ZDOTDIR/configs/public
zsh_add_folder $ZDOTDIR/configs/private

# Include private configs
# zsh_add_folder $ZDOTDIR/configs/private

# Initialize starship
if [ "$TERM" != "dumb" ]; then
	eval "$(starship init zsh)"
fi

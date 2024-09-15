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
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"

# Initialize starship
eval "$(starship init zsh)"

# Include public config
zsh_add_folder $ZDOTDIR/configs/public

# Include private configs
zsh_add_folder $ZDOTDIR/configs/private

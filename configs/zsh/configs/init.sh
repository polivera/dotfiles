#!/usr/bin/env zsh

# Include functions
source $ZDOTDIR/configs/functions.sh

export GPG_TTY=$(tty)
# Export XAP_OS file
check_os

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"

# Include public config
zsh_add_folder $ZDOTDIR/configs/public

# Include private configs
zsh_add_folder $ZDOTDIR/configs/private

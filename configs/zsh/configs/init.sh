# Include functions
source $ZDOTDIR/configs/functions.sh

# This should be set here, using zshenv will not work
export GPG_TTY=$(tty)

# Find a better way to do this :)
export POLI_CONFIG_ROOT=$(dirname $(dirname $(realpath $0)))

# This will set the variable $POLI_OS_NAME for later use
# The values could be: macos, linux, wsl, other
check_os

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"

# FZF (load after vi-mode)
case "$POLI_OS_NAME" in
fedora)
	source /usr/share/fzf/shell/key-bindings.zsh
	;;
macos)
	# eval "$(/opt/homebrew/bin/brew shellenv)"
	source /opt/homebrew/Cellar/fzf/*/shell/key-bindings.zsh
	;;
wsl) # This means WSL
  source /usr/share/doc/fzf/examples/key-bindings.zsh
	# eval "$(ssh-agent)" &>/dev/null
	# ssh-add ~/.ssh/* 2 &>/dev/null
	;;
*)
	source /usr/share/fzf/key-bindings.zsh
	;;
esac

# -----------------------------------------------------------------------------------------------------

# Include public config
zsh_add_folder $ZDOTDIR/configs/public

# Include private configs
zsh_add_folder $ZDOTDIR/configs/private

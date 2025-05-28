#!/usr/bin/env zsh

# Load AutoEnv
if [[ ! -n "$EMACS_VTERM_PATH" ]]; then
	case "$XAP_OS" in
	macos) source /opt/homebrew/opt/autoenv/activate.sh ;;
	arch) source $HOME/.local/npm-global/lib/node_modules/@hyperupcall/autoenv/activate.sh ;;
	fedora) source $HOME/.local/npm-global/lib/node_modules/@hyperupcall/autoenv/activate.sh ;;
	*) echo "OS not found in init script" ;;
	esac

	# Autoenv
	export AUTOENV_ENV_FILENAME=.env
	export AUTOENV_ENV_LEAVE_FILENAME=.env.leave
	export AUTOENV_ASSUME_YES=true
fi

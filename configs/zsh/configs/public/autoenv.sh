#!/usr/bin/env zsh

# Load AutoEnv
case "$XAP_OS" in
macos) source /opt/homebrew/opt/autoenv/activate.sh ;;
arch) source /usr/lib/node_modules/@hyperupcall/autoenv/activate.sh ;;
fedora) source $HOME/.local/npm-global/lib/node_modules/@hyperupcall/autoenv/activate.sh ;;
*) echo "OS not found in init script" ;;
esac

# Autoenv
export AUTOENV_ENV_FILENAME=.xapenv
export AUTOENV_ENV_LEAVE_FILENAME=.xapenv.leave
export AUTOENV_ASSUME_YES=true

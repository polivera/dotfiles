
# XDG variable
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache
export XDG_CONFIG_HOME=$HOME/.config

# History in cache directory:
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=$XDG_CACHE_HOME/zsh_history

# GOlang
export GOPATH=$XDG_DATA_HOME/go
# Node npm
export NPM_CONFIG_PREFIX=$XDG_CONFIG_HOME/npm-global
# PHP composer
export COMPOSER_PATH=$XDG_CONFIG_HOME/composer
# Python virtualenv-wrapper
export WORKON_HOME=$XDG_CONFIG_HOME/virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv

# Path
typeset -U PATH path
path=("$HOME/.local/bin" "$NPM_CONFIG_PREFIX/bin"
  "$GOPATH/bin" "$COMPOSER_PATH/vendor/bin" "$path[@]")
export PATH

# Default Apps
export EDITOR="nvim"
export READER="zathura"
export VISUAL="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export VIDEO="vlc"
export IMAGE="sxiv"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export PAGER="less"
export WM="i3"


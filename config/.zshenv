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
# PHP composer
export COMPOSER_PATH=$XDG_CONFIG_HOME/composer
# PyEnv
export PYENV_ROOT=$XDG_CONFIG_HOME/pyenv
# NVM
export NVM_DIR=$XDG_CONFIG_HOME/nvm

# Path
typeset -U PATH path
path=(
  "$HOME/.local/bin"
  "$GOPATH/bin" 
  "$COMPOSER_PATH/vendor/bin" 
  "$PYENV_ROOT/bin"
  "$path[@]")
export PATH

export EDITOR="nvim"

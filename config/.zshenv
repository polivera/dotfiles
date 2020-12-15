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
export PHP_COMPOSER_PATH=$XDG_CONFIG_HOME/composer
# PyEnv
export PYENV_ROOT=$XDG_CONFIG_HOME/pyenv
# NVM
export NVM_DIR=$XDG_CONFIG_HOME/nvm
# AutoJump
export AUTOJUMP_HOME=$XDG_CONFIG_HOME/autojump

# Path
typeset -U PATH path
path=(
  "$HOME/.local/bin"
  "$GOPATH/bin" 
  "$PHP_COMPOSER_PATH/vendor/bin" 
  "$AUTOJUMP_HOME/bin"
  "$PYENV_ROOT/bin"
  "$path[@]")
export PATH

export EDITOR="nvim"

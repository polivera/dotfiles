# XDG variable
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache
export XDG_CONFIG_HOME=$HOME/.config

# History in cache directory:
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=$XDG_CACHE_HOME/zsh_history

# GOLang
export GOPATH=$XDG_DATA_HOME/go
export GOROOT=/usr/lib/go

# PHP composer
export PHP_COMPOSER_PATH=$XDG_CONFIG_HOME/composer
# PyEnv
export PYENV_ROOT=$XDG_CONFIG_HOME/pyenv
# NVM
export NVM_DIR=$XDG_CONFIG_HOME/nvm
export NVM_SYMLINK_CURRENT=true
# Cargo
export CARGO_PATH=$XDG_DATA_HOME/cargo

# Path
typeset -U PATH path
path=(
  "$HOME/.local/bin"
  "$GOPATH/bin"
  "$GOROOT/bin"
  "$PHP_COMPOSER_PATH/vendor/bin"
  "$NVM_DIR/current/bin"
  "$PYENV_ROOT/bin"
  "$CARGO_PATH/bin"
  "$path[@]")
export PATH

export EDITOR="nvim"

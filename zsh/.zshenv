# XDG folders
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache
export XDG_CONFIG_HOME=$HOME/.config

# ZSH Config
export ZDOTDIR=$XDG_CONFIG_HOME/zsh
export HISTFILE=$XDG_CACHE_HOME/zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

# Firefox
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    export MOZ_ENABLE_WAYLAND=1
fi

export GNUPGHOME=$HOME/.gnupg

if command -v nvim &> /dev/null
then
  EDITOR="nvim"
else
  if command -v vim &> /dev/null
  then
    EDITOR="vim"
  else
    EDITOR="nano"
  fi
fi
export EDITOR

# Homebrew
export BREW_PATH=/opt/homebrew
# GOLang
export GOPATH=$XDG_DATA_HOME/go
# PHP composer
export PHP_COMPOSER_PATH=$XDG_CONFIG_HOME/composer
# PyEnv
export PYENV_ROOT=$XDG_CONFIG_HOME/pyenv
# NVM
export NVM_DIR=$XDG_CONFIG_HOME/nvm
export NVM_SYMLINK_CURRENT=true
# Rustup and Cargo
export RUSTUP_HOME=$XDG_CONFIG_HOME/rustup
export CARGO_HOME=$XDG_CONFIG_HOME/cargo
# Java
export SDKMAN_DIR=$XDG_CONFIG_HOME/sdkman
# GVM - https://github.com/moovweb/gvm
export GVM_DIR=$HOME/.gvm
export GOROOT_BOOTSTRAP=$GVM_DIR/gos/go1.4

# Path
PATH=$PATH:"$GOPATH/bin"
PATH=$PATH:"$PHP_COMPOSER_PATH/vendor/bin"
PATH=$PATH:"$NVM_DIR/current/bin"
PATH=$PATH:"$PYENV_ROOT/bin"
PATH=$PATH:"$CARGO_HOME/bin"
PATH=$PATH:"$HOME/.local/bin"
PATH=$PATH:"$BREW_PATH/bin"

# Add neovim lsp servers to Path
if [[ -d $HOME/.local/share/nvim/mason/bin ]]; then
  PATH=$PATH:"$HOME/.local/share/nvim/mason/bin"
fi


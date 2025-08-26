#!/usr/bin/env bash

# Add local path
LOCAL_PATH=$HOME/.local

# == Custom Bins ============================================================
prepend_to_path "$LOCAL_PATH/bin"

# == Custom Scripts ============================================================
prepend_to_path "$LOCAL_PATH/scripts"

# == Custom PRIVATE Scripts ============================================================
prepend_to_path "$LOCAL_PATH/private-scripts"

# == Neovim ====================================================================
export NVIM_MASON="$LOCAL_PATH/share/nvim/mason"
prepend_to_path "$NVIM_MASON/bin"

# == NPM =======================================================================
export NPM_PREFIX=$LOCAL_PATH/npm-global
prepend_to_path "$NPM_PREFIX/bin"

# == N =========================================================================
export N_PREFIX=$LOCAL_PATH/n
prepend_to_path "$N_PREFIX/bin"

# == PHP =======================================================================
export PHPENV_ROOT=$LOCAL_PATH/phpenv
if [[ -d $PHPENV_ROOT ]]; then
  mkdir -p "$PHPENV_ROOT/versions"
  eval "$(phpenv init -)"
fi
export PHP_COMPOSER_PATH=$XDG_CONFIG_HOME/composer
prepend_to_path "$PHP_COMPOSER_PATH/vendor/bin"

# == GO ========================================================================
export GOPATH=$XDG_DATA_HOME/go
prepend_to_path "$GOPATH/bin"

# == RUST ======================================================================
export CARGO_HOME=$LOCAL_PATH/share/cargo
prepend_to_path "$CARGO_HOME/bin"

# == C ========================================================================
export LD_LIBRARY_PATH="$HOME/.local/usr/lib:$LD_LIBRARY_PATH"

# == JAVA ====================================================================
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

# == Jetbrains ================================================================
export JETBRAINS_SCRIPTS="$HOME/.local/bin/jetbrains"
mkdir -p "$JETBRAINS_SCRIPTS 2>/dev/null"
prepend_to_path $JETBRAINS_SCRIPTS

if [[ -d $HOME/.docker ]];
then
  fpath=($HOME/.docker/completions $fpath)
fi
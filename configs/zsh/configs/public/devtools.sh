#!/usr/bin/env bash

# TODO: Check if string exist before add to PATH

# == Custom Scripts ============================================================
PATH=$PATH:"$HOME/.local/scripts"

# == Neovim ====================================================================
export NVIM_MASON="$HOME/.local/share/nvim/mason"
PATH=$PATH:"$NVIM_MASON/bin"

# == NPM =======================================================================
export NPM_PREFIX=$HOME/.local/npm-global
PATH=$PATH:"$NPM_PREFIX/bin"

# == PHP =======================================================================
export PHP_COMPOSER_PATH=$XDG_CONFIG_HOME/composer
PATH=$PATH:"$PHP_COMPOSER_PATH/vendor/bin"

# == GO ========================================================================
export GOPATH=$XDG_DATA_HOME/go
PATH=$PATH:"$GOPATH/bin"

# == RUST ======================================================================
export CARGO_HOME=$HOME/.local/share/cargo
PATH=$PATH:"$CARGO_HOME/bin"

# == C ========================================================================
export LD_LIBRARY_PATH="$HOME/.local/usr/lib:$LD_LIBRARY_PATH"

# == Jetbrains ================================================================
export JETBRAINS_SCRIPTS="$HOME/.local/bin/jetbrains"
mkdir -p $JETBRAINS_SCRIPTS 2>/dev/null
PATH=$PATH:$JETBRAINS_SCRIPTS

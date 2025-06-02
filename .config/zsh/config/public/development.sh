#!/usr/bin/env bash

# Add local path
LOCAL_PATH=$HOME/.local

# == Custom Bins ============================================================
add_to_path_variable "$LOCAL_PATH/bin"

# == Custom Scripts ============================================================
add_to_path_variable "$LOCAL_PATH/scripts"

# == Custom PRIVATE Scripts ============================================================
add_to_path_variable "$LOCAL_PATH/private-scripts"

# == Neovim ====================================================================
export NVIM_MASON="$LOCAL_PATH/share/nvim/mason"
add_to_path_variable "$NVIM_MASON/bin"

# == NPM =======================================================================
export NPM_PREFIX=$LOCAL_PATH/npm-global
add_to_path_variable "$NPM_PREFIX/bin"

# == N =========================================================================
export N_PREFIX=$LOCAL_PATH/n/
add_to_path_variable PATH="$N_PREFIX/bin"

# == PHP =======================================================================
export PHPENV_ROOT=$LOCAL_PATH/phpenv
mkdir -p "$PHPENV_ROOT/versions"
export PHP_COMPOSER_PATH=$XDG_CONFIG_HOME/composer
add_to_path_variable "$PHP_COMPOSER_PATH/vendor/bin"

# == GO ========================================================================
export GOPATH=$XDG_DATA_HOME/go
add_to_path_variable "$GOPATH/bin"

# == RUST ======================================================================
export CARGO_HOME=$LOCAL_PATH/share/cargo
add_to_path_variable "$CARGO_HOME/bin"

# == C ========================================================================
export LD_LIBRARY_PATH="$HOME/.local/usr/lib:$LD_LIBRARY_PATH"

# == JAVA ====================================================================
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

# == Jetbrains ================================================================
export JETBRAINS_SCRIPTS="$HOME/.local/bin/jetbrains"
mkdir -p "$JETBRAINS_SCRIPTS 2>/dev/null"
add_to_path_variable $JETBRAINS_SCRIPTS

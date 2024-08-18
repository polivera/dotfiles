#!/usr/bin/env bash

# == Custom Scripts ===========================================================
PATH=$PATH:"$HOME/.local/scripts"

# == NPM ======================================================================
NPM_PREFIX=$HOME/.local/npm-global
PATH=$PATH:"$NPM_PREFIX/bin"

# == PHP ======================================================================
export PHP_COMPOSER_PATH=$XDG_CONFIG_HOME/composer
PATH=$PATH:"$PHP_COMPOSER_PATH/vendor/bin"

# == GO =======================================================================
export GOPATH=$XDG_DATA_HOME/go
PATH=$PATH:"$GOPATH/bin"

#!/usr/bin/env bash

# == Custom Scripts ===========================================================
PATH=$PATH:"$HOME/.local/scripts"

# Load development tools
# NVM
# export NVM_DIR=$XDG_CONFIG_HOME/nvm
# export NVM_SYMLINK_CURRENT=true
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# == PHP ======================================================================
export PHP_COMPOSER_PATH=$XDG_CONFIG_HOME/composer
PATH=$PATH:"$PHP_COMPOSER_PATH/vendor/bin"

# == GO =======================================================================
export GO_PATH=$XDG_DATA_HOME/go
PATH=$PATH:"$GO_PATH/bin"

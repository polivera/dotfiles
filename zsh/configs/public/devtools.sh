#!/usr/bin/env bash

# Load development tools
# NVM
# todo: nvm loading takes too long, check if something can be done
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Rust cargo
[ -s $CARGO_PATH/env ] && source $CARGO_PATH/env

# PyENV
if [[ -s /usr/bin/pyenv || -d $PYENV_ROOT/bin ]]; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi

# Java
source $SDKMAN_DIR/bin/sdkman-init.sh 2>/dev/null

# Go GVM
if [[ -d $GVM_DIR ]]; then
  source $GVM_DIR/scripts/gvm 2>/dev/null
  if [[ ! -d $GOROOT_BOOTSTRAP ]]; then
    gvm install go1.4 -B
  fi
fi

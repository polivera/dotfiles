#!/bin/bash

# Load PyEnv

if [[ -s /usr/bin/pyenv || -d $PYENV_ROOT/bin ]]; then
  function load-pyenv {
    if [[ -d $PYENV_ROOT/bin ]]; then
      export PATH="$PATH:$PYENV_ROOT/bin"
    fi
    eval "$(pyenv init -)"
  }
fi


if [[ -d $HOME/.config/nvm ]]; then
  function load-nvm {
    export NVM_DIR="$HOME/.config/nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  }
fi

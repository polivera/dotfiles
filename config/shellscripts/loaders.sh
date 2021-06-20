#!/bin/bash

function load-pyenv {
  if [[ -s /usr/bin/pyenv || -d $PYENV_ROOT/bin ]]; then
    eval "$(pyenv init --path)"
    eval "$(pyenv init -)"
  fi
}

function load-nvm {
  if [[ -s $NVM_DIR/nvm.sh ]]; then
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  else
    [ -s "/usr/share/nvm/init-nvm.sh" ] && source "/usr/share/nvm/init-nvm.sh"  # Script to init nvm
  fi
}

function load-fzf {
  [ -f $XDG_CONFIG_HOME/fzf/.fzf.zsh ] && source $XDG_CONFIG_HOME/fzf/.fzf.zsh
  [ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
  [ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
}

function load-spaceshipt-prompt {
  [ -d /home/pablo/.zfunctions ] && fpath=($fpath "/home/pablo/.zfunctions")
}

function load-zsh-plugins {
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
  source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh 2>/dev/null
}

function load-cargo {
  [ -s $CARGO_PATH/env ] && source $CARGO_PATH/env
}

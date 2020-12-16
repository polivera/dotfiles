#!/bin/bash

function load-pyenv {
  if [[ -s /usr/bin/pyenv || -d $PYENV_ROOT/bin ]]; then
    eval "$(pyenv init -)"
  fi
}

function load-nvm {
  if [[ -d $HOME/.config/nvm ]]; then
    export NVM_DIR="$HOME/.config/nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  fi
}

function load-autojump {
  [ -s $XDG_CONFIG_HOME/autojump/etc/profile.d/autojump.sh ] && source $XDG_CONFIG_HOME/autojump/etc/profile.d/autojump.sh
}

function load-fzf {
  [ -f $XDG_CONFIG_HOME/fzf/.fzf.zsh ] && source $XDG_CONFIG_HOME/fzf/.fzf.zsh
}

function load-spaceshipt-prompt {
  [ -d /home/pablo/.zfunctions ] && fpath=($fpath "/home/pablo/.zfunctions")
}

function load-zsh-plugins {
  #source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
  source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh 2>/dev/null
}
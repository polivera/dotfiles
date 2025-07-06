#!/usr/bin/env zsh

if [[ "$XAP_OS" == "macos" ]];
then
  export HOMEBREW_PATH="/opt/homebrew"
  append_to_path "$HOMEBREW_PATH/bin"
  BREW_BIN="$HOMEBREW_PATH/bin/brew"

  if type "${BREW_BIN}" &> /dev/null; then
    export BREW_PREFIX="$("${BREW_BIN}" --prefix)"
    for mandir in "${BREW_PREFIX}/opt/"*"/libexec/gnuman"; do export MANPATH=$mandir:$MANPATH; done
    for mandir in "${BREW_PREFIX}/opt/"*"/share/man/man1"; do export MANPATH=$mandir:$MANPATH; done
  fi
fi

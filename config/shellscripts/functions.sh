#!/bin/bash

# Load PyEnv
if [[ -s /usr/bin/pyenv ]]; then
  function load-pyenv {
    eval "$(pyenv init -)"
  }
fi


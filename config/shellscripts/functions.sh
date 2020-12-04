#!/bin/bash

# Use fzf to search through command history
function _fz_shell_history {
  print -z $( \
    fc -l 1 | \
    fzf +s --tac --height "50%" | \
    sed -E 's/ *[0-9]*\*? *//' | \
    sed -E 's/\\/\\\\/g' \
  )
}


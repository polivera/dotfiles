#!/usr/bin/env bash

# Load environment using fzf
filename=$(basename -- "$1")
extension="${filename##*.}"

if [[ "$extension" = "env" ]]; then
  selected=$1
else
  selected=$(find ~/Projects/**/envs -type f | fzf)
  run-with-env.sh $selected ${@:1}
  exit 0
fi

if [[ -z $selected ]]; then
  exit 0
fi

set -o allexport
. $selected 
set +o allexport

${@:2}


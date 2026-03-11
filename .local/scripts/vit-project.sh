#!/usr/bin/env bash

if [[ -z $TMUX ]]; then
	echo "Error: This script must be run inside tmux"
	exit 1
fi

project=$(tmux display-message -p '#{session_name}')
vit "project:$project"
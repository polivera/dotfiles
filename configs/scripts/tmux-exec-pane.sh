#!/usr/bin/env zsh

# Create a new pane and run a command
#tmux split-window -v "exa -la; zsh"
# Get last pane
#tmux list-panes | tail -n 1 | sed 's/:.*//'
# Snd command to pane 3
#tmux send-keys -t 3 'echo "something"' C-m

POSITIONAL_ARGS=()
COMMAND=""
DIRECTION="-h"
NAME="noname"

while [[ $# -gt 0 ]]; do
	case $1 in
	-c | --command)
		COMMAND="$2"
		shift
		shift
		;;
	-v | --vertical)
		DIRECTION="-v"
		shift
		;;
	-n | --name)
		NAME="$2"
		shift
		shift
		;;
	*)
		POSITIONAL_ARGS+=("$1")
		shift
		;;
	esac
done

set -- "${POSITIONAL_ARGS[@]}"

echo "Command:   ${COMMAND}"
echo "Direction: ${DIRECTION}"
echo "Name:      ${NAME}"

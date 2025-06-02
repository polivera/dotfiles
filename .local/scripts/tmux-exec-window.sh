#!/usr/bin/env zsh

# Create a new window and run the command (the `; zsh` part is important)
# tmux new-window -n <window-name> "<user-command>; zsh"

# Send another command to the same window
# tmux send-keys -t <window-name> "<user-command>" C-m

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

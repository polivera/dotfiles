#!/usr/bin/env sh

if command -v task &>/dev/null; then
	taskdir="$HOME/Documents/Task"
	if [ ! -d "$taskdir" ]; then
		mkdir -p "$taskdir"
	fi
	export TASKRC="$taskdir/.taskrc"
	export TASKDATA="$taskdir/data/"
fi

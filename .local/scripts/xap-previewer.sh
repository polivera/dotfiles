#!/usr/bin/env zsh

case "$(file --mime "$1" | awk '{print $2}')" in
"inode/directory;") exa -la "$1" ;;
"text/plain;") bat --style=numbers --color=always "$1" ;;
*) echo "can't recognize format" ;;
esac

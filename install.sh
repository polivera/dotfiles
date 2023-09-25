#!/usr/bin/env bash

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
mkdir $HOME/.config 2&>/dev/null
mkdir $HOME/.local 2&>/dev/null

# Git config
echo "Linking Git"
rm -rf $HOME/.config/git
ln -s  $SCRIPTPATH/git -T $HOME/.config/git

# Link ZSH
echo "Linking ZSH"
rm -rf $HOME/.config/zsh
rm $HOME/.zshrc 2&>/dev/null
rm $HOME/.zshenv
ln -s  $SCRIPTPATH/zsh -T $HOME/.config/zsh
ln -s  $SCRIPTPATH/zsh/.zshenv -T $HOME/.zshenv

# Link TMux
echo "Linking TMux"
rm -rf $HOME/.config/tmux
ln -s  $SCRIPTPATH/tmux -T $HOME/.config/tmux

# Link Scripts
echo "Linking Scripts"
rm -rf $HOME/.local/bin
ln -s $SCRIPTPATH/bin -T $HOME/.local/bin

# Link Kitty
echo "Linking Kitty"
rm -rf $HOME/.config/kitty
ln -s  $SCRIPTPATH/kitty -T $HOME/.config/kitty

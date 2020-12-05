#!/bin/bash

source ./../.env.sh

sudo pacman -S alacritty

ln -s $DOTFILES_DIR/alacritty $XDG_CONFIG_HOME


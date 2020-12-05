#!/bin/bash

source ./../.env.sh

sudo pacman -S nnn --needed --noconfirm

ln -s $DOTFILES_DIR/nnn/nnn-config.sh $XDG_CONFIG_HOME/shellscripts


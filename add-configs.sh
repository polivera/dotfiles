#!/bin/bash

SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
CONFIGPATH=$SCRIPTPATH/config

# Remove previous configuration
rm -R $HOME/.config/alacritty \
      $HOME/.config/bspwm \
      $HOME/.config/dunst \
      $HOME/.config/git \
      $HOME/.config/i3 \
      $HOME/.config/mopidy \
      $HOME/.config/nvim \
      $HOME/.config/picom \
      $HOME/.config/polybar \
      $HOME/.config/rofi \
      $HOME/.config/shellscripts \
      $HOME/.config/sxhkd \
      $HOME/.config/systemd \
      $HOME/.config/tmux \
      $HOME/.config/urxvt \
      $HOME/.config/mimeapps.list \
      $HOME/.local/share/applications/mimeapps.list \
      $HOME/.local/share/fonts \
      $HOME/.imwheelrc \
      $HOME/.zshenv \
      $HOME/.zshrc \
      > /dev/null 2>&1


# Add symlinks for the configs
# Alacritty
ln -s $CONFIGPATH/alacritty $HOME/.config
# BSP Window Manager
ln -s $CONFIGPATH/bspwm $HOME/.config
# Dunst
ln -s $CONFIGPATH/dunst $HOME/.config
# Git
ln -s $CONFIGPATH/git $HOME/.config
# i3
ln -s $CONFIGPATH/i3 $HOME/.config
# Picom (compton)
ln -s $CONFIGPATH/picom $HOME/.config
# Polybar
ln -s $CONFIGPATH/polybar $HOME/.config
# Neovim
ln -s $CONFIGPATH/nvim $HOME/.config
# Mopidy
ln -s $CONFIGPATH/mopidy $HOME/.config
# rofi
ln -s $CONFIGPATH/rofi $HOME/.config
# shellscripts
ln -s $CONFIGPATH/shellscripts $HOME/.config
# Simple X HotKey Daemon
ln -s $CONFIGPATH/sxhkd $HOME/.config
# systemd
ln -s $CONFIGPATH/systemd $HOME/.config
# tmux
ln -s $CONFIGPATH/tmux $HOME/.config
# urxvt
ln -s $CONFIGPATH/urxvt $HOME/.config
# mimeapps
ln -s $CONFIGPATH/mimeapps/mimeapps.list $HOME/.config
ln -s $CONFIGPATH/mimeapps/mimeapps.list $HOME/.local/share/applications
# fonts
ln -s $SCRIPTPATH/fonts $HOME/.local/share
# imwheel
ln -s $SCRIPTPATH/.imwheelrc $HOME
# zsh
ln -s $SCRIPTPATH/.zshenv $HOME
ln -s $SCRIPTPATH/.zshrc $HOME

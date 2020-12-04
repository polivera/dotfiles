#!/bin/bash

SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
CONFIGPATH=$SCRIPTPATH/config

# Remove previous configuration
rm -R $XDG_CONFIG_HOME/alacritty \
      $XDG_CONFIG_HOME/bspwm \
      $XDG_CONFIG_HOME/dunst \
      $XDG_CONFIG_HOME/git \
      $XDG_CONFIG_HOME/i3 \
      $XDG_CONFIG_HOME/mopidy \
      $XDG_CONFIG_HOME/nvim \
      $XDG_CONFIG_HOME/picom \
      $XDG_CONFIG_HOME/polybar \
      $XDG_CONFIG_HOME/rofi \
      $XDG_CONFIG_HOME/shellscripts \
      $XDG_CONFIG_HOME/sxhkd \
      $XDG_CONFIG_HOME/systemd \
      $XDG_CONFIG_HOME/tmux \
      $XDG_CONFIG_HOME/urxvt \
      $XDG_CONFIG_HOME/mimeapps.list \
      $XDG_DATA_HOME/applications/mimeapps.list \
      $XDG_DATA_HOME/fonts \
      $HOME/.imwheelrc \
      $HOME/.zshenv \
      $HOME/.zshrc \
      > /dev/null 2>&1


# Add symlinks for the configs
# Alacritty
ln -s $CONFIGPATH/alacritty $XDG_CONFIG_HOME
# BSP Window Manager
ln -s $CONFIGPATH/bspwm $XDG_CONFIG_HOME
# Dunst
ln -s $CONFIGPATH/dunst $XDG_CONFIG_HOME
# Git
ln -s $CONFIGPATH/git $XDG_CONFIG_HOME
# i3
ln -s $CONFIGPATH/i3 $XDG_CONFIG_HOME
# Picom (compton)
ln -s $CONFIGPATH/picom $XDG_CONFIG_HOME
# Polybar
ln -s $CONFIGPATH/polybar $XDG_CONFIG_HOME
# Neovim
ln -s $CONFIGPATH/nvim $XDG_CONFIG_HOME
# Mopidy
ln -s $CONFIGPATH/mopidy $XDG_CONFIG_HOME
# rofi
ln -s $CONFIGPATH/rofi $XDG_CONFIG_HOME
# shellscripts
ln -s $CONFIGPATH/shellscripts $XDG_CONFIG_HOME
# Simple X HotKey Daemon
ln -s $CONFIGPATH/sxhkd $XDG_CONFIG_HOME
# systemd
ln -s $CONFIGPATH/systemd $XDG_CONFIG_HOME
# tmux
ln -s $CONFIGPATH/tmux $XDG_CONFIG_HOME
# urxvt
ln -s $CONFIGPATH/urxvt $XDG_CONFIG_HOME
# mimeapps
ln -s $CONFIGPATH/mimeapps/mimeapps.list $XDG_CONFIG_HOME
ln -s $CONFIGPATH/mimeapps/mimeapps.list $XDG_DATA_HOME/applications
# fonts
ln -s $SCRIPTPATH/fonts $XDG_DATA_HOME
# imwheel
ln -s $SCRIPTPATH/.imwheelrc $HOME
# zsh
ln -s $SCRIPTPATH/.zshenv $HOME
ln -s $SCRIPTPATH/.zshrc $HOME

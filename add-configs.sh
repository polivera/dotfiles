#!/bin/bash

BASEPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
CONFIGPATH=$BASEPATH/config
SCRIPTPATH=$BASEPATH/scripts

# Remove previous configuration
rm -R $XDG_CONFIG_HOME/alacritty \
      $XDG_CONFIG_HOME/git \
      $XDG_CONFIG_HOME/nvim \
      $XDG_CONFIG_HOME/shellscripts \
      $HOME/.local/bin \
      $XDG_CONFIG_HOME/systemd \
      $XDG_CONFIG_HOME/tmux \      
      $XDG_DATA_HOME/fonts \
      $HOME/.imwheelrc \
      $HOME/.zshenv \
      $HOME/.zshrc \
      > /dev/null 2>&1


# Add symlinks for the configs
# Alacritty
ln -s $CONFIGPATH/alacritty $XDG_CONFIG_HOME
# Git
ln -s $CONFIGPATH/git $XDG_CONFIG_HOME
# Neovim
ln -s $CONFIGPATH/nvim $XDG_CONFIG_HOME
# shellscripts
ln -s $CONFIGPATH/shellscripts $XDG_CONFIG_HOME
ln -s $SCRIPTPATH/bin $HOME/.local/
# systemd
ln -s $CONFIGPATH/systemd $XDG_CONFIG_HOME
# tmux
ln -s $CONFIGPATH/tmux $XDG_CONFIG_HOME
# fonts
ln -s $BASEPATH/fonts $XDG_DATA_HOME
# imwheel
ln -s $BASEPATH/.imwheelrc $HOME
# zsh
ln -s $BASEPATH/.zshenv $HOME
ln -s $BASEPATH/.zshrc $HOME

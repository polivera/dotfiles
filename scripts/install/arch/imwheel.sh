#!/bin/bash

source ./../.env.sh

pacman -S imwheel --needed --noconfirm

rm -R $HOME/.imwheelrc \
      $XDG_CONFIG_HOME/systemd

ln -s $DOTFILES_DIR/.imwheelrc $HOME 
ln -s $DOTFILES_DIR/systemd $XDG_CONFIG_HOME

systemctl --user daemon-reload
systemctl --user enable --now imwheel.service


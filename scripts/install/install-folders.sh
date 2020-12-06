#!/bin/bash
SRC_HOME_FOLDER=/mnt/data/pablo/Home
SRC_CONF_FOLDER=/mnt/data/pablo/Config
SRC_THEME_FOLDER=/mnt/data/pablo/Theme

rm -R $HOME/Documents \
      $HOME/Downloads \
      $HOME/Music \
      $HOME/Pictures \
      $HOME/Projects \
      $HOME/Templates \
      $HOME/Videos \
      $HOME/.ssh \
      $HOME/.config/dotfiles \
      $HOME/.local/share/themes \
      $HOME/.local/share/icons \
      $HOME/.local/share/gnome-shell/extensions \
      > /dev/null 2>&1

# Adding links
ln -s $SRC_HOME_FOLDER/Documents $HOME
ln -s $SRC_HOME_FOLDER/Downloads $HOME
ln -s $SRC_HOME_FOLDER/Music $HOME
ln -s $SRC_HOME_FOLDER/Pictures $HOME
ln -s /mnt/data/pablo/Projects $HOME
ln -s $SRC_HOME_FOLDER/Templates $HOME
ln -s $SRC_HOME_FOLDER/Videos $HOME
ln -s $SRC_CONF_FOLDER/ssh -T $HOME/.ssh
mkdir $HOME/.config > /dev/null 2>&1
ln -s $SRC_CONF_FOLDER/dotfiles $HOME/.config/dotfiles
mkdir -p $HOME/.local/share/gnome-shell > /dev/null 2>&1
ln -s $SRC_THEME_FOLDER/themes -T $HOME/.local/share/themes
ln -s $SRC_THEME_FOLDER/icons -T $HOME/.local/share/icons
ln -s $SRC_THEME_FOLDER/extensions -T $HOME/.local/share/gnome-shell/extensions

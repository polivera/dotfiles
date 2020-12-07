#!/bin/bash
SRC_HOME_FOLDER=/mnt/data/pablo/Home
SRC_CONF_FOLDER=/mnt/data/pablo/Config
SRC_THEME_FOLDER=/mnt/data/pablo/Theme
CONFIGPATH=$SRC_CONF_FOLDER/dotfiles/config
SCRIPTPATH=$SRC_CONF_FOLDER/dotfiles/scripts

echo '[Creating folders]'
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

# Create necesary folders
mkdir $HOME/.config > /dev/null 2>&1
mkdir -p $HOME/.local/share/gnome-shell > /dev/null 2>&1

# Adding links
ln -s $SRC_HOME_FOLDER/Documents $HOME
ln -s $SRC_HOME_FOLDER/Downloads $HOME
ln -s $SRC_HOME_FOLDER/Music $HOME
ln -s $SRC_HOME_FOLDER/Pictures $HOME
ln -s /mnt/data/pablo/Projects $HOME
ln -s $SRC_HOME_FOLDER/Templates $HOME
ln -s $SRC_HOME_FOLDER/Videos $HOME
ln -s $SRC_CONF_FOLDER/ssh -T $HOME/.ssh
ln -s $SRC_CONF_FOLDER/dotfiles $HOME/.config/dotfiles
ln -s $SRC_THEME_FOLDER/themes -T $HOME/.local/share/themes
ln -s $SRC_THEME_FOLDER/icons -T $HOME/.local/share/icons
ln -s $SRC_THEME_FOLDER/extensions -T $HOME/.local/share/gnome-shell/extensions


# Remove previous configuration
rm -R $XDG_CONFIG_HOME/git \
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
ln -s $CONFIGPATH/git $XDG_CONFIG_HOME
ln -s $CONFIGPATH/nvim $XDG_CONFIG_HOME
ln -s $CONFIGPATH/shellscripts $XDG_CONFIG_HOME
ln -s $SCRIPTPATH/bin $HOME/.local/
ln -s $CONFIGPATH/systemd $XDG_CONFIG_HOME
ln -s $CONFIGPATH/tmux $XDG_CONFIG_HOME
ln -s $BASEPATH/fonts $XDG_DATA_HOME
ln -s $BASEPATH/.imwheelrc $HOME
ln -s $BASEPATH/.zshenv $HOME
ln -s $BASEPATH/.zshrc $HOME

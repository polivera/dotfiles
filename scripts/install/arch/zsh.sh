#!/bin/bash

echo 'Installing zsh'

source ./.env.sh

sudo pacman -S \
  zsh exa fzf \
  --needed --noconfirm

yay -S \
  spaceship-prompt-git zsh-syntax-highlighting-git autojump-git \
  --needed --noconfirm

rm -R $HOME/.zshrc \
      $HOME/.zshenv \
      $XDG_CONFIG_HOME/shellscripts

# Adding configuration
ln -s $DOTFILES_DIR/.zshrc $HOME 
ln -s $DOTFILES_DIR/.zshenv $HOME 
ln -s $DOTFILES_DIR/shellscripts $XDG_CONFIG_HOME

chsh -s /usr/bin/zsh

#!/bin/bash

sudo pacman -S \
  php composer php-sqlite php-xsl xdebug \
  nodejs npm \
  python python-pip pyenv \
  docker docker-compose \
  networkmanager-openconnect openconnect aws-cli \
  jdk-openjdk go gdb --noconfirm --needed

# Allow use docker
sudo usermod -aG docker pablo

mkdir $XDG_CONFIG_HOME/npm-global
npm config set prefix ${XDG_CONFIG_HOME}'/npm-global'
        
yay -S jetbrains-toolbox postman-bin visual-studio-code-bin --needed --noconfirm


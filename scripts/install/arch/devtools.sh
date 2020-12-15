#!/bin/bash

sudo pacman -S \
  php composer php-sqlite php-xsl xdebug \
  python python-pip pyenv \
  docker docker-compose \
  networkmanager-openconnect openconnect aws-cli \
  jdk-openjdk go gdb --noconfirm --needed

# Allow use docker
sudo usermod -aG docker pablo

# Install nvm 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

yay -S jetbrains-toolbox postman-bin visual-studio-code-bin --needed --noconfirm

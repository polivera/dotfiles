#!/bin/bash

# Update
sudo apt-get update && sudo apt-get upgrade

# Install zsh stuff and build stuff
sudo apt-get install zsh fzf gcc

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install exa

# Install GoLang
wget https://dl.google.com/go/go1.16.4.linux-amd64.tar.gz 
sudo tar -xvf go1.16.4.linux-amd64.tar.gz
sudo mv go /usr/local


# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
nvm install node
npm install -g spaceship-prompt
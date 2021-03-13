#!/bin/bash

sudo pacman -S \
  firewalld vlc qbittorrent \
  imwheel firefox rclone \
  exa bat \
  --needed --noconfirm

yay -S google-chrome --needed --noconfirm

#!/bin/bash

sudo pacman -Syu
sudo pacman -S base-devel udiskie udisks2 usbutils git \
    pacman-contrib go htop --needed --noconfirm

echo "Installing yay"
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ~
rm -Rf yay

yay -S aic94xx-firmware wd719x-firmware \
  --needed --noconfirm

sudo mkinitcpio -P

../zsh.sh
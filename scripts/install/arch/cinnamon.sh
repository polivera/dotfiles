#!/bin/bash

sudo pacman -S \
    cinnamon xreader plank \
    lightdm lightdm-gtk-greeter \
    redshift gnome-calculator \
    alacritty \
    kvantum-qt5 \
    xdg-user-dirs \
    xdg-user-dirs-gtk \
    xdg-utils \
    --needed --noconfirm

yay -S xviewer pix --needed --noconfirm

sudo systemctl enable lightdm

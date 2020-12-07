#!/bin/bash

echo 'Installing plasma desktop'

source ./../.env.sh

sudo pacman -S \
    plasma plasma-desktop konsole dolphin dolphin-plugins \
    ark ffmpegthumbs filelight gwenview kamoso \
    kate kcalc kdeconnect kdegraphics-thumbnailers \
    kdialog ksystemlog kwalletmanager kde-gtk-config \
    --needed --noconfirm

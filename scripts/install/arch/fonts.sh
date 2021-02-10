#!/bin/bash

echo 'Installing fonts'

sudo pacman -S ttf-dejavu ttf-droid \
    ttf-bitstream-vera ttf-hack \
    ttf-liberation ttf-font-awesome \
    ttf-opensans ttf-roboto ttf-nerd-fonts-symbols-mono \
    awesome-terminal-fonts noto-fonts-emoji unicode-emoji \
    --needed --noconfirm

yay -S ttf-yosemite-san-francisco-font-git --needed --noconfirm

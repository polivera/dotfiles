#!/bin/bash

echo 'Installing fonts'

sudo pacman -S ttf-dejavu ttf-droid \
    ttf-bitstream-vera ttf-hack ttf-inconsolata ttf-indic-otf \
    ttf-liberation ttf-font-awesome noto-fonts-emoji \
    ttf-opensans noto-fonts ttf-roboto ttf-caladea ttf-carlito ttf-nerd-fonts-symbols-mono \
    awesome-terminal-fonts \
    --needed --noconfirm

yay -S ttf-yosemite-san-francisco-font-git --needed --noconfirm


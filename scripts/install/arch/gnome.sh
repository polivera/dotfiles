#!/bin/bash

echo 'Install gnome'

sudo pacman -S \
    avahi \
    eog \
    evince \
    file-roller \
    gdm \
    gnome-backgrounds \
    gnome-calculator \
    gnome-calendar \
    gnome-contacts \
    gnome-control-center \
    gnome-font-viewer \
    gnome-keyring \
    gnome-logs \
    gnome-menus \
    gnome-screenshot \
    gnome-session \
    gnome-settings-daemon \
    gnome-shell \
    gnome-shell-extensions \
    gnome-system-monitor \
    gnome-tweaks \
    gnome-usage \
    gnome-todo \
    gnome-disk-utility \
    grilo-plugins \
    gvfs \
    gvfs-google \
    mousetweaks \
    nautilus \
    mutter \
    networkmanager \
    tracker \
    tracker-miners \
    simple-scan \
    gst-libav \
    perl-file-mimeinfo \
    gst-libav \
    gst-plugins-bad \
    gst-plugins-base \
    gst-plugins-good \
    gst-plugins-ugly \
    xdg-user-dirs-gtk \
    chrome-gnome-shell \
    gnome-clocks \
    gnome-weather \
    devhelp \
    kvantum-qt5 \
    xdg-user-dirs \
    xdg-user-dirs-gtk \
    xdg-utils \
    xf86-input-elographics \
    xf86-input-evdev \
    xf86-input-libinput \
    xf86-input-void \
    xf86-input-wacom \
    xfsprogs \
    xorg-mkfontscale \
    xorg-server \
    xorg-twm \
    xorg-xinit \
    --needed --noconfirm

sudo systemctl enable gdm

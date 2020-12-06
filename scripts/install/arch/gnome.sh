#!/bin/bash

echo 'Install gnome'

sudo pacman -S avahi eog evince file-roller gdm \
    gnome-backgrounds gnome-calculator gnome-calendar \
    gnome-contacts gnome-control-center gnome-font-viewer \
    gnome-keyring gnome-logs gnome-menus gnome-screenshot \
    gnome-session gnome-settings-daemon gnome-shell \
    gnome-shell-extensions gnome-system-monitor grilo-plugins \
    gvfs gvfs-google mousetweaks nautilus mutter networkmanager \
    tracker tracker-miners xdg-user-dirs-gtk \
    simple-scan gnome-tweaks gnome-usage gnome-todo \
    gst-libav perl-file-mimeinfo xdg-utils gst-libav \
    gst-plugins-bad gst-plugins-base gst-plugins-good \
    gst-plugins-ugly gnome-disk-utility xdg-user-dirs-gtk \
    chrome-gnome-shell gnome-clocks gnome-weather \
    devhelp --needed --noconfirm

sudo systemctl enable gdm

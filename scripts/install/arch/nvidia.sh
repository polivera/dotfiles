#!/bin/bash

echo 'Installing nvidia'

sudo pacman -S nvidia \
    ffnvcodec-headers \
    libvdpau libxnvctrl \
    nvidia-settings \
    nvidia-utils \
    opencl-nvidia \
    nvidia-cg-toolkit \
    lib32-flex \
    lib32-libcanberra \
    lib32-libcanberra-pulse \
    lib32-libva-vdpau-driver \
    lib32-mesa-demos \
    lib32-nvidia-utils \
    libcanberra \
    libcanberra-pulse \
    libva-vdpau-driver --needed --noconfirm


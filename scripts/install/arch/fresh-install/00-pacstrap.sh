#!/bin/bash

# This is my personal configuration for my desktop PC
if [[ "$1" != "--notebook" ]]; then
  mkdir -p /mnt/mnt/shared /mnt/mnt/storage /mnt/mnt/win10
  mount /dev/sdb3 /mnt/mnt/win10
  mount /dev/sdc1 /mnt/mnt/storage
  mount /dev/sdd1 /mnt/mnt/shared
fi
swapon /mnt/mnt/data/system/swapfile

timedatectl set-ntp true

# I have to fix this at some point (lazy af)
pacstrap /mnt \
  base base-devel linux linux-firmware linux-headers \
  dkms sudo networkmanager \
  grub efibootmgr os-prober ntfs-3g fzf \
  openssh pulseaudio alsa alsa-utils bluez bluez-utils

genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt

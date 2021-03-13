#!/bin/bash

# Customization variables
WIN_DISK=/dev/sda3
STORAGE_DISK=/dev/sdc1
SHARED_DISK=/dev/sdd1
UCODE_TYPE=amd-ucode
SWAP_SIZE=8192  # in mb
# End customization

DATA_DISK=/dev/sdb3
DATA_DISK_MOUNT_POINT=/mnt/mnt/data

# Create needed mount points
echo "[INFO] - Creating mount folders"
mkdir -p /mnt/mnt/shared /mnt/mnt/storage /mnt/mnt/win10 > /dev/null 2>&1
[ -n "$WIN_DISK" ] && mount $WIN_DISK /mnt/mnt/win10
[ -n "$STORAGE_DISK" ] && mount $STORAGE_DISK /mnt/mnt/storage
[ -n "$SHARED_DISK" ] && mount $SHARED_DISK /mnt/mnt/shared

[[ ! -d "$DATA_DISK_MOUNT_POINT/system" ]] && mkdir -p $DATA_DISK_MOUNT_POINT/system
if [[ ! -f "$DATA_DISK_MOUNT_POINT/system/swapfile" ]]; then
  echo "[INFO] - Creating swapfile"
  dd if=/dev/zero of=$DATA_DISK_MOUNT_POINT/system/swapfile bs=1M count=512 status=progress
  chmod 600 $DATA_DISK_MOUNT_POINT/system/swapfile
  mkswap $DATA_DISK_MOUNT_POINT/system/swapfile
fi
swapon $DATA_DISK_MOUNT_POINT/system/swapfile

echo "[INFO] - Setting time"
timedatectl set-ntp true

echo "[INFO] - Installing stuff"
pacstrap /mnt \
  base base-devel linux linux-firmware linux-headers \
  dkms sudo networkmanager $UCODE_TYPE \
  grub efibootmgr os-prober ntfs-3g fzf \
  openssh pulseaudio alsa alsa-utils bluez bluez-utils

echo "[INFO] - Generating fstabs"
genfstab -U /mnt >> /mnt/etc/fstab

echo "[INFO] - chroot to /mnt"
arch-chroot /mnt

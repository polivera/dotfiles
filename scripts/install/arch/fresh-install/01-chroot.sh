#!/bin/bash

# Customization variables
MACHINE_NAME=otrave
BOOT_DIRECTORY=/boot/efi
# End customization


ln -sf /usr/share/zoneinfo/America/Argentina/Buenos_Aires /etc/localtime
hwclock --systohc

# Configuring locale
cp /etc/locale.gen /etc/locale.gen.back
echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen
echo 'en_GB.UTF-8 UTF-8' >> /etc/locale.gen
echo 'es_AR.UTF-8 UTF-8' >> /etc/locale.gen
locale-gen
echo 'LANG=en_US.UTF-8' > /etc/locale.conf

# Link hosts
if [[ -f /mnt/data/system/hosts ]]; then
  rm /etc/hosts
  ln -s /mnt/data/system/hosts -T /etc/hosts
else
  echo '' >> /etc/hosts
  echo '127.0.0.1    localhost' >> /etc/hosts
  echo '::1          localhost' >> /etc/hosts
  echo "${MACHINE_NAME}" > /etc/hostname
  echo "127.0.1.1    ${MACHINE_NAME} ${MACHINE_NAME}.localhost" >> /etc/hosts
fi

# init
mkinitcpio -P

# user config
echo '[INFO] Setting root Password'
passwd

echo '[INFO] Setting pablo Password'
useradd -m pablo -G wheel
passwd pablo

cp /etc/sudoers /etc/sudoers.back
echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

grub-install --target=x86_64-efi --efi-directory=$BOOT_DIRECTORY --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

# Enable NM
systemctl enable NetworkManager

sed -i 's/#Color/Color/g' /etc/pacman.conf

echo '' >> /etc/pacman.conf
echo '[multilib]' >> /etc/pacman.conf
echo 'Include = /etc/pacman.d/mirrorlist' >> /etc/pacman.conf


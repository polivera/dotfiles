#!/bin/bash

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
	# Hostname and hosts
	if [[ "$1" != "--notebook" ]]; then
	  echo 'otrave' > /etc/hostname
	  echo '127.0.1.1    otrave otrave.localhost' >> /etc/hosts
	else
	  echo 'mini-otrave' > /etc/hostname
	  echo '127.0.1.1    mini-otrave mini-otrave.localhost' >> /etc/hosts
	fi
fi

if [[ "$1" != "--notebook" ]]; then
  pacman -S amd_ucode
else
  pacman -S intel_ucode
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
if [[ "$1" != "--notebook" ]]; then
  echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
  grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
else
  echo '%wheel ALL=(ALL) ALL' >> /etc/sudoers
  grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
fi

grub-mkconfig -o /boot/grub/grub.cfg

# Enable NM
systemctl enable NetworkManager

sed -i 's/#Color/Color/g' /etc/pacman.conf

echo '' >> /etc/pacman.conf
echo '[multilib]' >> /etc/pacman.conf
echo 'Include = /etc/pacman.d/mirrorlist' >> /etc/pacman.conf


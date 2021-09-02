#!/bin/bash

hwclock --systohc
locale-gen
timedatectl set-timezone Europe/Bucharest
echo "Configuring network"
echo "archmc" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 archmc.localdomain archmc" >> /etc/hosts
cat /etc/hosts
echo "Root password:"
passwd
echo "Installing base packages"
pacman -S linux-firmware git neofetch nano grub efibootmgr networkmanager network-manager-applet reflector base-devel linux-headers ipset os-prober ntfs-3g terminus-font openssh bash-completion dnsutils ufw

#gpu drivers
# pacman -S  xf86-video-amdgpu
# pacman -S  nvidia nvidia-utils nvidia-settings

echo "Configuring grub bootloader"
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

echo "Configuring base services"
systemctl enable NetworkManager
systemctl enable sshd
systemctl enable ufw
ufw allow ssh
echo "Creating a new user"
useradd -m doc10
echo "Password for doc10:"
passwd doc10
echo "doc10 ALL=(ALL) ALL" >> /etc/sudoers.d/doc10
echo "doc10 now has sudo privilleges."

echo "Final configuration"
mkinitcpio -P
echo "Installation complete."

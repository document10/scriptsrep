#!/bin/bash

hwclock --systohc
locale-gen
echo "Configuring network"
echo "archmc" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 archmc.localdomain archmc" >> /etc/hosts
cat /etc/hosts
echo "Root password:"
passwd
echo "Installing base packages"
pacman -S curl git nano grub efibootmgr networkmanager network-manager-applet reflector base-devel linux-headers ipset os-prober ntfs-3g terminus-font openssh

#gpu drivers
# pacman -S  xf86-video-amdgpu
# pacman -S  nvidia nvidia-utils nvidia-settings

echo "Configuring grub bootloader"
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

echo "Configuring base services"
systemctl enable NetworkManager
systemctl enable sshd
#creating a user
useradd -m doc10
echo "Password for doc10:"
passwd doc10
echo "doc10 ALL=(ALL) ALL" >> /etc/sudoers.d/doc10

#creating a swapfile
echo "Creating swapfile"
fallocate -l 1024M /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
echo "Loading swapfile"
echo "/swapfile	none	swap	defaults	0	0" >> /etc/fstab
cat /etc/fstab
echo "kernel.sysrq = 1" >> /etc/sysctl.d/99.sysctl.conf
echo "vm.vfs_cache_pressure=50" >> /etc/sysctl.d/99.sysctl.conf
echo "vm.swappiness = 5" >> /etc/sysctl.d/99.sysctl.conf
echo "Swapfile settings"
cat /etc/sysctl.d/99.sysctl.conf
echo "Final configuration"
mkinitcpio -P
free -m

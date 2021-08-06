#!/bin/bash

hwclock --systohc
locale-gen
#network configuration
echo "archmc" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 archmc.localdomain archmc" >> /etc/hosts
passwd
# You can remove the tlp package if you are installing on a desktop or vm

pacman -S curl git nano grub efibootmgr networkmanager network-manager-applet  reflector base-devel linux-headers  tlp iptables-nft ipset os-prober ntfs-3g terminus-font openssh

#gpu drivers
# pacman -S  xf86-video-amdgpu
# pacman -S  nvidia nvidia-utils nvidia-settings

#configuring grub bootloader
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

#configuring base services
systemctl enable NetworkManager
systemctl enable sshd
systemctl enable tlp # You can comment this command out if you didn't install tlp, see above
#creating a user
useradd -m doc10
passwd doc10
echo "doc10 ALL=(ALL) ALL" >> /etc/sudoers.d/doc10

#creating a swapfile
fallocate -l 1024M /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
echo "/swapfile	none	swap	defaults	0	0" >> /etc/fstab
echo "kernel.sysrq = 1" >> /etc/sysctl.d/99.sysctl.conf
echo "vm.vfs_cache_pressure=50" >> /etc/sysctl.d/99.sysctl.conf
echo "vm.swappiness = 5" >> /etc/sysctl.d/99.sysctl.conf
free -m
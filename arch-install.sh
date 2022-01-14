#!/bin/bash
ln -sf /usr/share/zoneinfo/Europe/Bucharest /etc/localtime
hwclock --systohc
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "KEYMAP=us" >> /etc/vconsole.conf
echo "Configuring network"
echo "archmc" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 archmc.localdomain archmc" >> /etc/hosts
cat /etc/hosts
echo "Root password:"
passwd
echo "Installing base packages"
pacman -Syu --noconfirm linux-firmware git neofetch grub networkmanager reflector base-devel linux-headers ipset os-prober ntfs-3g terminus-font openssh bash-completion dnsutils ufw iptables micro exa ed gd lldb gdb crda ipcalc

echo "Configuring grub bootloader"
#uefi
pacman -S efibootmgr
grub-install --recheck --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

#mbr/bios
#grub-install --recheck --target=i386-pc /dev/sda # replace sda with your disk name, not the partition
#grub-mkconfig -o /boot/grub/grub.cfg


echo "Configuring base services"
systemctl enable --now NetworkManager
systemctl enable --now sshd
systemctl enable --now iptables
systemctl enable --now ip6tables
systemctl enable --now ufw
ufw enable
ufw allow ssh
echo "Creating a new user"
useradd -m doc10
echo "Password for doc10:"
passwd doc10
echo "doc10 ALL=(ALL) ALL" >> /etc/sudoers.d/doc10
echo "doc10 now has sudo privilleges."
usermod -aG wheel,audio,video,optical,storage doc10
echo "Final configuration"
mkinitcpio -P
echo "Installation complete."

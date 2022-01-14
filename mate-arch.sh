#!/bin/bash
#must run as root
pacman -Syu
pacman -S xorg xorg-server xterm firefox lightdm  lightdm-gtk-greeter lightdm-gtk-greeter-settings archlinux-wallpaper avahi xdg-user-dirs xdg-utils gedit bluez bluez-utils alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack sof-firmware mate mate-extra blueman arc-solid-gtk-theme arc-gtk-theme arc-icon-theme
#gpu drivers,COMMENT THE ONES YOU DON'T NEED
pacman -S nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings vulkan-icd-loader lib32-vulkan-icd-loader
pacman -S lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader
pacman -S lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader
pacman -S virtualbox-guest-utils
systemctl enable lightdm
systemctl enable bluetooth

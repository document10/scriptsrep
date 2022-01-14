#!/bin/bash
#must run as root
pacman -Syu
pacman -S xorg xorg-server xterm firefox archlinux-wallpaper avahi xdg-user-dirs xdg-utils gedit bluez bluez-utils alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack sof-firmware blueman arc-solid-gtk-theme arc-gtk-theme arc-icon-theme gnome
#gpu drivers,COMMENT THE ONES YOU DON'T NEED
systemctl enable gdm.service
systemctl enable bluetooth

#!/bin/bash
#must run as root
pacman -Syu
pacman -S xorg xorg-server xterm firefox lightdm  lightdm-gtk-greeter lightdm-gtk-greeter-settings archlinux-wallpaper avahi xdg-user-dirs xdg-utils gedit bluez bluez-utils alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack sof-firmware mate mate-extra blueman arc-solid-gtk-theme arc-gtk-theme arc-icon-theme
systemctl enable lightdm
systemctl enable bluetooth

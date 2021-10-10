#!/bin/bash
#must run as root
pacman -Syu
pacman -S xorg xorg-server xterm firefox lightdm  lightdm-gtk-greeter lightdm-gtk-greeter-settings archlinux-wallpaper avahi xdg-user-dirs xdg-utils gedit bluez bluez-utils alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack sof-firmware xfce4 xfce4-goodies
#gpu drivers,COMMENT THE ONES YOU DON'T NEED
pacman -S  xf86-video-amdgpu
pacman -S  nvidia nvidia-utils nvidia-settings
pacman -S virtualbox-guest-utils
systemctl enable lightdm
systemctl enable bluetooth

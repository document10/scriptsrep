#!/bin/bash
#must run as root
pacman -Syu
pacman -S xorg xorg-server xterm firefox lightdm  lightdm-gtk-greeter lightdm-gtk-greeter-settings archlinux-wallpaper avahi xdg-user-dirs xdg-utils gedit bluez bluez-utils alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack sof-firmware cinnamon nemo-fileroller blueman arc-solid-gtk-theme arc-gtk-theme arc-icon-theme pulseaudio pulseaudio-alsa pavucontrol firefox vlc gimp xfburn thunderbird gedit gnome-system-monitor faenza-icon-theme
#gpu drivers,COMMENT THE ONES YOU DON'T NEED
systemctl enable lightdm
systemctl enable bluetooth

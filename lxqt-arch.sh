#!/bin/bash
#must run as root
pacman -Syu
pacman -S xorg xorg-server xterm firefox sddm archlinux-wallpaper avahi xdg-user-dirs xdg-utils gedit bluez bluez-utils alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack sof-firmware lxqt xdg-utils ttf-freefont blueman arc-solid-gtk-theme arc-gtk-theme arc-icon-theme libpulse libstatgrab libsysstat lm_sensors network-manager-applet oxygen-icons pavucontrol-qt picom
#gpu drivers,COMMENT THE ONES YOU DON'T NEED
systemctl enable sddm
systemctl enable bluetooth
echo "compton -f &" >> /home/doc10/.xprofile

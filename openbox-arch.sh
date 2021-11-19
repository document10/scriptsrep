#!/bin/bash
#must run as root
pacman -Syu
pacman -S xorg xorg-server xterm firefox lightdm  lightdm-gtk-greeter lightdm-gtk-greeter-settings archlinux-wallpaper pcmanfm avahi xdg-user-dirs xdg-utils gedit bluez bluez-utils alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack sof-firmware blueman arc-solid-gtk-theme arc-gtk-theme arc-icon-theme openbox obconf tint2 picom lxappearance xarchiver unzip gzip lzip menumaker volumeicon
#gpu drivers,COMMENT THE ONES YOU DON'T NEED
pacman -S  xf86-video-amdgpu
pacman -S  nvidia nvidia-utils nvidia-settings
pacman -S virtualbox-guest-utils
systemctl enable lightdm
systemctl enable bluetooth
echo "mmaker openbox -f -t xfterm &" >> /home/dxvk/.xprofile
echo "openbox --reconfigure &" >> /home/dxvk/.xprofile
echo "compton -f &" >> /home/dxvk/.xprofile
echo "tint2 &" >> /home/dxvk/.xprofile
echo "pcmanfm -d --desktop &" >> /home/dxvk/.xprofile
echo "volumeicon &" >> /home/dxvk/.xprofile

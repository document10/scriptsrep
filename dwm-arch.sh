#!/bin/bash
#MUST RUN AS ROOT
cd
git clone https://git.suckless.org/dwm/
git clone https://git.suckless.org/dwmstatus
git clone https://git.suckless.org/st
git clone https://git.suckless.org/dmenu
git clone https://git.suckless.org/sbase/
git clone https://git.suckless.org/surf
pacman -Syu
pacman -S xorg xorg-server xterm firefox nitrogen picom lightdm  lightdm-gtk-greeter lightdm-gtk-greeter-settings archlinux-wallpaper pcmanfm avahi xdg-user-dirs xdg-utils gedit bluez bluez-utils alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack sof-firmware blueman arc-solid-gtk-theme arc-gtk-theme arc-icon-theme
#gpu drivers,COMMENT THE ONES YOU DON'T NEED
pacman -S  xf86-video-amdgpu
pacman -S  nvidia nvidia-utils nvidia-settings
pacman -S virtualbox-guest-utils
cd dwm
make
make install
cd 
cd dwmstatus
make
make install
cd
cd st
make
make install
cd
cd dmenu
make
make install
cd
cd sbase
make
make install
cd
cd surf
make
make install
cd
mkdir -p /usr/share/xsessions
echo "[Desktop Entry]" >> /usr/share/xsessions/dwm.desktop
echo "Encoding=UTF-8" >> /usr/share/xsessions/dwm.desktop
echo "Name=Dwm" >> /usr/share/xsessions/dwm.desktop
echo "Comment=Dynamyc window manager" >> /usr/share/xsessions/dwm.desktop
echo "Exec=dwm" >> /usr/share/xsessions/dwm.desktop
echo "Icon=dwm" >> /usr/share/xsessions/dwm.desktop
echo "Type=XSession" >> /usr/share/xsessions/dwm.desktop
#change doc10 to your username
echo "nitrogen --restore &" >> /home/doc10/.xprofile
echo "picom -f &" >>/home/doc10/.xprofile
cat /home/doc10/.xprofile
systemctl enable lightdm
systemctl enable bluetooth

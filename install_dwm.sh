#!/bin/bash
cd
git clone https://git.suckless.org/dwm/
git clone https://git.suckless.org/dwmstatus
git clone https://git.suckless.org/st
git clone https://git.suckless.org/surf
git clone https://git.suckless.org/dmenu
pacman -Syu
pacman -S xorg xorg-server xterm firefox nitrogen picom lightdm  lightdm-gtk-greeter  lightdm-gtk-greeter-settings archlinux-wallpaper arc-icon-theme arc-solid-gtk-theme arc-gtk-theme lxappearance pcmanfm
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
cd surf
make
make install
cd
cd dmenu
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
echo "nitrogen --restore &" >> .xprofile
echo "picom -f &" >>.xprofile
systemctl enable lightdm

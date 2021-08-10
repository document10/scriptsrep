#!/bin/bash
git clone https://git.suckless.org/dwm/
git clone https://git.suckless.org/dwmstatus
git clone https://git.suckless.org/st
git clone https://git.suckless.org/surf
sudo pacman -Syu
sudo pacman -S xorg xorg-server xterm firefox nitrogen picom lightdm  lightdm-gtk-greeter  lightdm-gtk-greeter-settings archlinux-wallpaper
cd dwm
make
sudo make clean install
cd
cd dwmstatus
make
sudo make clean install
cd
cd st
make
sudo make clean install
cd
cd surf
make
sudo make clean install
cd
sudo mkdir -p /usr/share/xsessions
sudo echo "[Desktop Entry]" >> /usr/share/xsessions/dwm.desktop
sudo echo "Encoding=UTF-8" >> /usr/share/xsessions/dwm.desktop
sudo echo "Name=Dwm" >> /usr/share/xsessions/dwm.desktop
sudo echo "Comment=Dynamyc window manager" >> /usr/share/xsessions/dwm.desktop
sudo echo "Exec=dwm" >> /usr/share/xsessions/dwm.desktop
sudo echo "Icon=dwm" >> /usr/share/xsessions/dwm.desktop
sudo echo "Type=XSession" >> /usr/share/xsessions/dwm.desktop
echo "nitrogen --restore &" >> .xprofile
echo "picom -f &" >>.xprofile

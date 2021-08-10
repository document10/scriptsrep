#!/bin/bash
git clone https://git.suckless.org/dwm/
git clone https://git.suckless.org/dwmstatus
git clone https://git.suckless.org/st
git clone https://git.suckless.org/surf
pacman -Syu
pacman -S xorg xorg-server xterm firefox nitrogen picom lightdm  lightdm-gtk-greeter  lightdm-gtk-greeter-settings archlinux-wallpaper
cd dwm
make
make install
cd 
cd ScriptsRep
cd dwmstatus
make
make install
cd
cd ScriptsRep
cd st
make
make install
cd
cd ScriptsRep
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
echo "nitrogen --restore &" >> .xprofile
echo "picom -f &" >>.xprofile
systemctl enable lightdm

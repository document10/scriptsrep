#!/bin/bash
#WHATEVER YOU DO DON'T RUN THIS SCRIPT AS ROOT
echo "Installing required dependencies(just in case ;)"
sudo pacman -S git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -Ps
echo "yay installed succesfully.YAAAAY!!!"

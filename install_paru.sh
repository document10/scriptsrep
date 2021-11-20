#!/bin/bash
#DO NOT RUN AS ROOT
echo "Installing required dependencies (just in case)"
sudo pacman -Syu --noconfirm base-devel git cargo
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
paru -Qua
echo "Paru has been installed succesfully."

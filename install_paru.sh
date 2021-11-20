#!/bin/bash
#DO NOT RUN AS ROOT
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

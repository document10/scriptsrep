echo "Installing git(just in case ;)"
sudo pacman -S git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -Ps
echo "yay installed succesfully.YAAAAY!!!"

pkg install xf86-input-evdev xorg lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings pcmanfm compton xdg-user-dirs xdg-utils mousepad gnome-backgrounds oss polkit polkit-gnome gtk-arc-themes openbox obconf tint2 menumaker clearlooks dmenu volumeicon
mmaker openbox -f -t xterm
sysrc lightdm_enable=YES
echo "mmaker openbox -f -t xfterm &" >> /home/dxvk/.xprofile
echo "openbox --reconfigure &" >> /home/dxvk/.xprofile
echo "compton -f &" >> /home/dxvk/.xprofile
echo "tint2 &" >> /home/dxvk/.xprofile
echo "pcmanfm -d --desktop" >> /home/dxvk/.xprofile
echo "volumeicon" >> /home/dxvk/.xprofile
sysrc compton_enable="YES"
sysrc webcamd_enable="YES"

pkg install xf86-input-evdev xorg lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings nitrogen pcmanfm compton xdg-user-dirs xdg-utils gedit mousepad gnome-backgrounds oss polkit polkit-gnome gtk-arc-themes openbox obconf tint2 menumaker clearlooks
mmaker openbox -f -t xterm
sysrc lightdm_enable=YES
echo "mmaker openbox -f -t xterm &" >> /home/dxvk/.xprofile
echo "openbox --reconfigure" >> /home/dxvk/.xprofile
echo "nitrogen --restore &" >> /home/dxvk/.xprofile
echo "compton -f &" >> /home/dxvk/.xprofile
echo "tint2 &" >> /home/dxvk/.xprofile
echo "pcmanfm --desktop" >> /home/dxvk/.xprofile
sysrc compton_enable="YES"
sysrc webcamd_enable="YES"
#THAT'S ALL FOLKS!!!

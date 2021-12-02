pkg install -y xf86-input-evdev xorg lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings pcmanfm picom xdg-user-dirs xdg-utils mousepad gnome-backgrounds oss polkit polkit-gnome gtk-arc-themes openbox obconf tint2 menumaker clearlooks dmenu volumeicon xfce4-terminal lxappearance
mmaker openbox -f -t xfterm
echo "mmaker openbox -f -t xfterm &" >> /home/dxvk/.xprofile
echo "openbox --reconfigure &" >> /home/dxvk/.xprofile
echo "picom -f &" >> /home/dxvk/.xprofile
echo "tint2 &" >> /home/dxvk/.xprofile
echo "pcmanfm -d --desktop &" >> /home/dxvk/.xprofile
echo "volumeicon &" >> /home/dxvk/.xprofile
echo "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &" >> /home/dxvk/.xprofile
sysrc compton_enable="YES"
sysrc webcamd_enable="YES"
sysrc lightdm_enable="YES"

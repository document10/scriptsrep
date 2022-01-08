pkg install -y xorg dwm xf86-input-evdev lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings nitrogen pcmanfm picom xdg-user-dirs xdg-utils gedit gnome-backgrounds oss polkit polkit-gnome gtk-arc-themes
sysrc lightdm_enable=YES
echo "nitrogen --restore &" >> /home/dxvk/.xprofile
echo "picom -f &" >>/home/dxvk/.xprofile
sysrc compton_enable="YES"
sysrc webcamd_enable="YES"
#THAT'S ALL FOLKS!!!

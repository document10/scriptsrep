pkg install xorg dwm lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings nitrogen pcmanfm compton xdg-user-dirs xdg-utils gedit gnome-backgrounds oss polkit polkit-gnome
sysrc lightdm_enable=YES
echo "nitrogen --restore &" >> /home/dxvk/.xprofile
echo "compton -f &" >>/home/dxvk/.xprofile
#THAT'S ALL FOLKS!!!

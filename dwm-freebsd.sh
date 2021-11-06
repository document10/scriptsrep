pkg install xorg dwm lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings nitrogen pcmanfm compton
sysrc lightdm_enable=YES
echo "nitrogen --restore &" >> /home/dxvk/.xprofile
echo "picom -f &" >>/home/dxvk/.xprofile
#THAT'S ALL FOLKS!!!

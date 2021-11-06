pkg install xorg dwm lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings nitrogen pcmanfm compton virtual-oss xdg-user-dirs xdg-utils gedit
echo 'cuse_load=yes' >> /boot/loader.conf
sysrc lightdm_enable=YES
echo "nitrogen --restore &" >> /home/dxvk/.xprofile
echo "compton -f &" >>/home/dxvk/.xprofile
#THAT'S ALL FOLKS!!!

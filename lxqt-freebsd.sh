pkg install -y xf86-input-evdev xorg lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings xdg-user-dirs xdg-utils polkit polkit-gnome gtk-arc-themes lxqt bsdisks compton
sysrc lightdm_enable=YES
sysrc webcamd_enable=YES
echo "compton -f &" >> /home/dxvk/.xprofile
echo "lxqt-panel &" >> /home/dxvk/.xprofile
#THAT'S ALL FOLKS!!!

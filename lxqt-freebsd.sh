pkg install -y xf86-input-evdev xorg lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings xdg-user-dirs xdg-utils polkit polkit-gnome gtk-arc-themes lxqt bsdisks plasma5-kwin plasma5-systemsettings kwinft kf5-kwindowsystem konsole
sysrc lightdm_enable=YES
sysrc webcamd_enable=YES
echo "lxqt-panel &" >> /home/dxvk/.xprofile
#THAT'S ALL FOLKS!!!

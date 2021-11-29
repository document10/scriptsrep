pkg install -y xf86-input-evdev xorg lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings xdg-user-dirs xdg-utils oss polkit polkit-gnome xfce gtk-arc-themes
sysrc lightdm_enable=YES
sysrc webcamd_enable=YES
#THAT'S ALL FOLKS!!!

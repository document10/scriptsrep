#MUST RUN AS ROOT
cp /usr/share/zoneinfo/Europe/Bucharest /etc/localtime
freebsd-update fetch
freebsd-update install
pkg update && pkg upgrade
pkg install -y sudo nano git bash neofetch
sysrc dbus_enable=YES
sysrc hald_enable=YES
sysrc sound_load=YES
sysrc snd_hda_load=YES
sysrc moused_enable=YES
echo "proc /proc procfs rw 0 0">>/etc/fstab

#MUST RUN AS ROOT
cp /usr/share/zoneinfo/Europe/Bucharest /etc/localtime
pw groupmod operator -m dxvk
pw groupmod network -m dxvk
pw groupmod wheel -m dxvk
pw groupmod video -m dxvk
pw groupmod sshd -m dxvk
freebsd-update fetch
freebsd-update install
pkg bootstrap
pkg update && pkg upgrade
pkg install -y sudo nano git bash neofetch base gcc micro gvfs unzip gzip lzip exa
sysrc dbus_enable=YES
sysrc hald_enable=YES
sysrc sound_load=YES
sysrc snd_hda_load=YES
sysrc moused_enable=YES
sysrc snd_driver=YES
echo 'cuse_load="YES" ' >> /boot/loader.conf
echo "proc /proc procfs rw 0 0">>/etc/fstab

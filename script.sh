echo Note this only works on debian or debian based dirtros.
echo --Bluetooth not avaible on wake problem--
echo Current bluez version
echo Updating dependencies...
sudo add-apt-repository ppa:bluetooth/bluez
sudo apt-get update
sudo apt upgrade
dpkg --status bluez | grep '^Version:'
echo --A2DP sink default problem--
echo The sccript will need to install some dependencies or update them if they are already installed.
sudo apt install pulseaudio pulseaudio-utils pavucontrol pulseaudio-module-bluetooth
echo A file will opened in your text editor.If you haven't alredy,type these lines:
echo [General]
echo Enable=Source,Sink,Media,Socket
echo Restarting bluetooth-service
sudo service bluetooth restart
pacmd list-cards

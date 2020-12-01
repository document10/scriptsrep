echo --A2DP sink problems--
echo The sccript will need to install some dependencies or update them if they are already installed.
sudo apt install pulseaudio pulseaudio-utils pavucontrol pulseaudio-module-bluetooth
echo A file will opened in your text editor.If you haven't alredy,type these lines:
echo [General]
echo Enable=Source,Sink,Media,Socket
echo Restarting bluetooth-service
sudo service bluetooth restart
pacmd list-cards

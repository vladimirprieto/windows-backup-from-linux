mkdir -p $HOME/respaldos
echo "xterm -e \"partimage -z1 -f3 -b restore /dev/sda2 $HOME/respaldos/image.partimage.gz.000\"" > $HOME/respaldos/restauro.sh
echo "reboot" >> $HOME/respaldos/restauro.sh
chmod +x $HOME/respaldos/restauro.sh
echo "#!/usr/bin/env xdg-open

[Desktop Entry]
Encoding=UTF-8
Version=1.0
Type=Application
Terminal=true
Icon[es_CL]=gnome-panel-launcher
Name[es_CL]=Restauro de Windows
Exec=gksudo $HOME/respaldos/restauro.sh
Name=Restauro de Windows
Icon=gnome-panel-launcher" > $HOME/Escritorio/Restauro_de_Windows.desktop
chmod +x $HOME/Escritorio/Restauro_de_Windows.desktop
cd $HOME/respaldos
sudo aptitude install partimage
sudo partimage -z1 -d -b save /dev/sda2 image.partimage.gz

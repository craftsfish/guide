#!/bin/bash
sudo apt install vim git numlockx
sudo update-alternatives --config editor
sudo apt install fonts-wqy-microhei
echo "set hlsearch
set tabstop=4
set ffs=unix
set number" >> $HOME/.vimrc

#lcj     ALL=(ALL:ALL) NOPASSWD:ALL
#sudo mount.cifs -o user=lcj,password=123456,uid=lcj,gid=lcj //192.168.1.1/share $HOME/share

#sudo apt install texlive-full
#sudo apt install texstudio texstudio-doc
#sudo usermod -a -G vboxsf lcj

#sudo apt install fcitx-googlepinyin
#sudo apt install postgresql python-pip python-psycopg2
#sudo -H pip install --upgrade pip
#sudo -H pip install django
#umask 002

#goldendict
#sudo apt install goldendict
#https://xinyo.org/archives/61412/
#http://download.huzheng.org/zh_CN/
#sudo apt install samba

#SI v3.5 SI3US-989291-62604

#sudo systemctl set-default multi-user.target
#sudo systemctl set-default graphical.target

#sudo apt install xrdp
#sudo systemctl status xrdp
#sudo apt install rdesktop

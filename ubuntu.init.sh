#!/bin/bash
sudo apt install vim git numlockx
sudo apt install fcitx-googlepinyin
#sudo apt install postgresql python-pip python-psycopg2
#sudo -H pip install --upgrade pip
#sudo -H pip install django
#umask 002

sudo apt install fonts-wqy-microhei

sudo apt install build-essential
sudo apt install libncurses-dev

#cscope
sudo apt install cscope
mkdir -p $HOME/.vim/plugin
cd $HOME/.vim/plugin
wget https://raw.githubusercontent.com/craftsfish/guide/master/cscope_maps.vim
cd -

sudo update-alternatives --config editor

#goldendict
sudo apt install goldendict
#https://xinyo.org/archives/61412/
#http://download.huzheng.org/zh_CN/

#lcj     ALL=(ALL:ALL) NOPASSWD:ALL

echo "set hlsearch
set tabstop=4
set ffs=unix
set number" >> $HOME/.vimrc

sudo apt install samba

#SI v3.5 SI3US-989291-62604

#sudo systemctl set-default multi-user.target
#sudo systemctl set-default graphical.target

#sudo apt install xrdp
#sudo systemctl status xrdp
#sudo apt install rdesktop

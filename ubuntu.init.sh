#!/bin/bash
sudo apt install vim git numlockx
sudo apt install fcitx-googlepinyin
#sudo apt install postgresql python-pip python-psycopg2
#sudo -H pip install --upgrade pip
#sudo -H pip install django
#umask 002

sudo apt install build-essential
sudo apt install libncurses-dev

#cscope
sudo apt install cscope
mkdir -p $HOME/.vim/plugin
cd $HOME/.vim/plugin
wget https://raw.githubusercontent.com/craftsfish/guide/master/cscope_maps.vim
cd -

#goldendict
sudo apt install goldendict
#https://xinyo.org/archives/61412/
#http://download.huzheng.org/zh_CN/

#lcj     ALL=(ALL:ALL) NOPASSWD:ALL

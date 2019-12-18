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
wget http://cscope.sourceforge.net/cscope_maps.vim
cd -

#lcj     ALL=(ALL:ALL) NOPASSWD:ALL

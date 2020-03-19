#!/bin/bash
#git clone https://mirrors.tuna.tsinghua.edu.cn/git/linux.git
git clone https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
#sudo apt install build-essential
#sudo apt install libncurses-dev
sudo apt install cscope
mkdir -p $HOME/.vim/plugin
cd $HOME/.vim/plugin
wget https://raw.githubusercontent.com/craftsfish/guide/master/cscope_maps.vim
cd -

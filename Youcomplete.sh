#!/bin/bash


#
#********************************************************************
#Author:        chaiguolong
#Date:          2024-01-04
#FileName:      Fedora39_Youcomplete.sh
#Description:   install Youcomplete for vim
#********************************************************************


#安装Youcomplete必备的依赖
sudo dnf install -y mono-complete golang nodejs mono-complete nodejs-npm java-1.8.0-openjdk python3-devel gcc-g++
sudo dnf groupinstall "Development Tools"
#运行有两种方法,一种有错,一种成功

#方法一:
#运行下面命令有错误(说空间不足,但是空间是够得,但是内存从2G加到了4G,运行下面命令成功了)
#错误如下:
#error: failed to extract package (perhaps you ran out of disk space?): No space left on device (os error 28)
#cd ~/.vim/bundle/YouCompleteMe
#python3 install.py --all

#方法二:
#运行下面命令成功
/usr/bin/python3 /home/dream/.vim/bundle/YouCompleteMe/third_party/ycmd/build.py --all --verbose

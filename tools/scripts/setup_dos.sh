#!/bin/bash
# MS-DOS toolchain setup
echo "Установка инструментов для DOS..."
sudo apt-get install -y dosbox
wget https://github.com/andrewwutw/build-djgpp/releases/download/v3.3/djgpp-linux64-gcc1220.tar.bz2
tar xvf djgpp-linux64-gcc1220.tar.bz2 -C $HOME
export DJGPP=$HOME/djgpp
export PATH=$PATH:$DJGPP/bin
echo "export DJGPP=$DJGPP" >> ~/.bashrc
echo "export PATH=\$PATH:$DJGPP/bin" >> ~/.bashrc

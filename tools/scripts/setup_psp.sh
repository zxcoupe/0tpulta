#!/bin/bash
# PSP toolchain setup
echo "Установка инструментов для PlayStation Portable..."
sudo apt-get install -y autoconf automake libtool libusb-dev
wget https://github.com/pspdev/pspdev/archive/refs/tags/latest.tar.gz
tar xvf latest.tar.gz
cd pspdev-latest
./toolchain.sh
export PSPDEV=$PWD/psp
export PATH=$PATH:$PSPDEV/bin
echo "export PSPDEV=$PSPDEV" >> ~/.bashrc
echo "export PATH=\$PATH:$PSPDEV/bin" >> ~/.bashrc

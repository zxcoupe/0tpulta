#!/bin/bash
# Amiga toolchain setup
echo "Установка инструментов для Amiga..."
sudo apt-get install -y git make flex bison gcc
git clone https://github.com/bebbo/amiga-gcc
cd amiga-gcc
./build-toolchain.sh
export AMIGA_TOOLCHAIN=$PWD
echo "export PATH=\$PATH:$AMIGA_TOOLCHAIN/bin" >> ~/.bashrc

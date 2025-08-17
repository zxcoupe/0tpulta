#!/bin/bash
# Sega Dreamcast toolchain setup
echo "Установка инструментов для Dreamcast..."
sudo apt-get install -y build-essential gcc-m68k-binutils libmpfr-dev
git clone https://github.com/KallistiOS/KallistiOS
cd KallistiOS
git checkout v4.2.0
export KOS_BASE=$PWD
export KOS_ARCH=dreamcast
./setup.sh
echo "export KOS_BASE=$KOS_BASE" >> ~/.bashrc

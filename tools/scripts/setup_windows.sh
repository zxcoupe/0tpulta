#!/bin/bash
# Windows cross-compilation setup
echo "Установка инструментов для Windows..."
sudo apt-get install -y mingw-w64
# Дополнительные библиотеки
wget https://www.libsdl.org/release/SDL2-devel-2.28.2-mingw.tar.gz
tar xvf SDL2-devel-2.28.2-mingw.tar.gz -C /usr/x86_64-w64-mingw32

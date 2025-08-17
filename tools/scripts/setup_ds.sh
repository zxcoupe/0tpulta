#!/bin/bash
# Nintendo DS toolchain setup
echo "Установка инструментов для Nintendo DS..."
sudo apt-get install -y build-essential libc6-dev-i386
wget https://github.com/devkitPro/pacman/releases/download/v1.0.2/devkitpro-pacman.amd64.deb
sudo dpkg -i devkitpro-pacman.amd64.deb
sudo dkp-pacman -Syu
sudo dkp-pacman -S nds-dev
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=$DEVKITPRO/devkitARM
echo "export DEVKITPRO=$DEVKITPRO" >> ~/.bashrc
echo "export DEVKITARM=$DEVKITARM" >> ~/.bashrc

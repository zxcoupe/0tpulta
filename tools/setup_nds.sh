#!/bin/bash
if ! command -v dkp-pacman &> /dev/null; then
    wget https://github.com/devkitPro/pacman/releases/download/v1.0.2/devkitpro-pacman.deb
    sudo dpkg -i devkitpro-pacman.deb
    sudo dkp-pacman -S nds-dev
fi

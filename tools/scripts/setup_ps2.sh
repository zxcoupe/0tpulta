#!/bin/bash
# PS2 toolchain setup
echo "Установка инструментов для PlayStation 2..."
sudo apt-get install -y build-essential git patch wget
git clone https://github.com/ps2dev/ps2dev
cd ps2dev
export PS2DEV=$PWD
export PS2SDK=$PS2DEV/ps2sdk
export PATH=$PATH:$PS2DEV/bin:$PS2DEV/ee/bin:$PS2DEV/iop/bin:$PS2DEV/dvp/bin:$PS2SDK/bin
./toolchain.sh
echo "export PS2DEV=$PS2DEV" >> ~/.bashrc
echo "export PS2SDK=$PS2SDK" >> ~/.bashrc
echo "export PATH=\$PATH:$PS2DEV/bin:$PS2DEV/ee/bin:$PS2DEV/iop/bin:$PS2DEV/dvp/bin:$PS2SDK/bin" >> ~/.bashrc

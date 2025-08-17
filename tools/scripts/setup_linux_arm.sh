#!/bin/bash
# ARM Linux toolchain setup
echo "Установка инструментов для ARM Linux..."
sudo apt-get install -y gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf \
     libasound2-dev:armhf libavcodec-dev:armhf libavformat-dev:armhf \
     libswresample-dev:armhf libpq-dev:armhf
# Для Rockchip устройства
wget https://releases.linaro.org/components/toolchain/binaries/latest-7/arm-linux-gnueabihf/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf.tar.xz
tar xvf gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf.tar.xz
export ARM_TOOLCHAIN=$PWD/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf
echo "export PATH=\$PATH:$ARM_TOOLCHAIN/bin" >> ~/.bashrc

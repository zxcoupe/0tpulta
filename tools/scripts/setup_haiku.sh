#!/bin/bash
# Haiku OS toolchain setup
echo "Установка инструментов для Haiku OS..."
wget https://eu.hpkg.haiku-os.org/haikuports/master/x86_64/current/packages/gcc-13.2.0-1-x86_64.hpkg
sudo pkgman install gcc-13.2.0-1-x86_64.hpkg

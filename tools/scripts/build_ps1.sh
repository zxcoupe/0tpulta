#!/bin/bash
mkdir -p build_ps1
cd build_ps1
cmake -DPLATFORM_PS1=ON ..
make -j4

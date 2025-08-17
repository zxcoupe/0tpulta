#!/bin/bash
mkdir -p build_rgb30
cd build_rgb30
cmake -DPLATFORM_RGB30=ON ..
make -j4

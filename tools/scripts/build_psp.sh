#!/bin/bash
mkdir -p build_psp
cd build_psp
cmake -DPLATFORM_PSP=ON ..
make -j4

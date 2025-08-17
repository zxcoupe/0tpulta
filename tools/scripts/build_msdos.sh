#!/bin/bash
mkdir -p build_msdos
cd build_msdos
cmake -DPLATFORM_MSDOS=ON ..
make -j4

#!/bin/bash
mkdir -p build_dreamcast
cd build_dreamcast
cmake -DPLATFORM_DREAMCAST=ON ..
make -j4

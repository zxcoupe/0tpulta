#!/bin/bash
mkdir -p build_ds
cd build_ds
cmake -DPLATFORM_DS=ON ..
make -j4

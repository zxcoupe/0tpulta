#!/bin/bash
mkdir -p build_rocknix
cd build_rocknix
cmake -DPLATFORM_ROCKNIX=ON ..
make -j4

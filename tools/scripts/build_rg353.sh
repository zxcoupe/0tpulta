#!/bin/bash
mkdir -p build_rg353
cd build_rg353
cmake -DPLATFORM_RG353=ON ..
make -j4

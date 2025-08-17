#!/bin/bash
mkdir -p build_arc-d
cd build_arc-d
cmake -DPLATFORM_ARC-D=ON ..
make -j4

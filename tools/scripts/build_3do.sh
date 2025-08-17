#!/bin/bash
mkdir -p build_3do
cd build_3do
cmake -DPLATFORM_3DO=ON ..
make -j4

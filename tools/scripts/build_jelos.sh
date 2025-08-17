#!/bin/bash
mkdir -p build_jelos
cd build_jelos
cmake -DPLATFORM_JELOS=ON ..
make -j4

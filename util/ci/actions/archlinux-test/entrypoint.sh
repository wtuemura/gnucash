#!/bin/bash -le

mkdir -p "$HOME"/.local/share

mkdir build
cd build
export TZ="America/Los_Angeles"
export PATH="$PATH:/usr/bin/core_perl"
cmake /github/workspace -DWITH_PYTHON=ON -DCMAKE_BUILD_TYPE=debug -G Ninja
ninja
ninja check

cp Testing/Temporary/LastTest.log /github/workspace

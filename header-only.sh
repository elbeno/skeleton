#!/bin/bash

rm -rf ./src/lib
sed -i '/lib\/SConscript/d' ./src/SConscript
sed -i 's/, LIBS=.*)/)/' ./src/test/SConscript
sed -i '/add_subdirectory (src\/lib)/d' ./CMakeLists.txt

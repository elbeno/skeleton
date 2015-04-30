#!/bin/bash

rm ./src/lib/*
rmdir ./src/lib
sed -i '/lib\/SConscript/d' ./src/SConscript
sed -i 's/, LIBS=.*)/)/' ./src/test/SConscript

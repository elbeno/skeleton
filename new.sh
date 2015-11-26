#!/bin/bash

# Check arguments
if [ "$#" -ne 1 ]; then
  echo "Expected one parameter: the new directory"
  return 1
fi

if [ ! -f new.sh ]; then
  echo "Source new.sh from the skeleton directory"
  return 2
fi

# Make the new directory, copy stuff in
origdir=`pwd`
mkdir ../$1
cd ../$1
git init
git fetch --depth=1 -n $origdir/.git
git reset --hard $(git commit-tree FETCH_HEAD^{tree} -m "Initial commit")

# Remove superfluous stuff
rm -rf ./build
git rm new.sh

# Change the project name
sed -i "s/(skeleton)/($1)/" CMakeLists.txt
git add CMakeLists.txt

# Rewrite the README.md
rm README.md
echo '# TODO: Fill in this README' >> README.md
echo '' >> README.md
echo '### Status' >> README.md
echo "[![Build Status](https://travis-ci.org/elbeno/$1.svg?branch=master)](https
://travis-ci.org/elbeno/$1)" >> README.md
echo '' >> README.md
echo 'This project is distributed under <some license>. See LICENSE for details.' >> README.md
git add README.md

# Fold these changes into the initial commit
git commit --amend --no-edit

# Get the submodules
git submodule init
git submodule update

# Initialize cmake
mkdir build
cd build
cmake ..

# Done
cd ..
echo 'You have a fresh git repo here. Happy hacking!'

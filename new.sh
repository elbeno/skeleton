#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Expected one parameter: the new directory"
  return 1
fi

if [ ! -f new.sh ]; then
  echo "Source new.sh from the skeleton directory"
  return 2
fi

mkdir ../$1
cp -R . ../$1
cd ../$1
./clean.sh
rm -rf .git
rm new.sh
sed -i "s/(skeleton)/($1)/" ./CMakeLists.txt
git init .
git commit --allow-empty -m "Initial commit"
echo 'You have an empty git repo here. Now run header-only.sh if you want to get rid of the default lib in the project. Happy hacking!'

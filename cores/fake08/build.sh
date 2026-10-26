#!/bin/sh

cd target/
git clone --recurse-submodules -j8 https://github.com/ingobeans/fake-08.git
git pull


cd fake-08/platform/libretro
make
cd ../../../../
cp target/fake-08/platform/libretro/fake08_libretro.so target/debug 
echo "Done!"
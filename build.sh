#!/bin/bash
make ARCH=arm clean
make ARCH=arm awmon_defconfig
make -j2 ARCH=arm CROSS_COMPILE=arm-eabi-
cd ../compat-wireless-3.0.9-1/
./make.sh
cd ../usbhost-kernel
./package.sh
cp nexus_awmon.zip /tmp/

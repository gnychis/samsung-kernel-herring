#!/bin/bash
make ARCH=arm clean
make ARCH=arm herring_defconfig
make -j4 ARCH=arm CROSS_COMPILE=arm-eabi-

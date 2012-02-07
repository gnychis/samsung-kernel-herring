#!/bin/bash
mkdir -p kernel_image
cd kernel_image
mkdir kernel
cp ../arch/arm/boot/zImage kernel/
mkdir -p system/lib/modules
find ../ -name "bcm*.ko" -exec cp {} system/lib/modules \;
tar czvf ../kernel.tar *
cd ../
rm -fr kernel_image

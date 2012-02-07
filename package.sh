#!/bin/bash
rm -f package_tree/system/modules/*
rm -f arch/arm/boot/zImage
cp arch/arm/boot/zImage package_tree/kernel
find -name "bcm*.ko" -exec cp {} package_tree/system/modules \;
cd package_tree
zip -r ../nexus_coexisyst.zip *

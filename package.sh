#!/bin/bash
rm -f package_tree/system/modules/*
rm -f package_tree/kernel/zImage
cp arch/arm/boot/zImage package_tree/kernel
find . -name "bcm*.ko" -exec cp {} package_tree/system/modules \;
find ../compat-wireless-3.0.9-1/ -name "*.ko" -exec cp {} package_tree/system/modules \;
cd package_tree
zip -r ../nexus_awmon.zip *

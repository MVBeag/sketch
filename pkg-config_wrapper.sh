#!/bin/sh
PKG_CONFIG_SYSROOT_DIR=/opt/dey/2.4-r2/ccimx6ulsbc/dey-image-qt-fb/sysroots/cortexa7hf-neon-dey-linux-gnueabi
export PKG_CONFIG_SYSROOT_DIR
PKG_CONFIG_LIBDIR=/opt/dey/2.4-r2/ccimx6ulsbc/dey-image-qt-fb/sysroots/cortexa7hf-neon-dey-linux-gnueabi/usr/lib/pkgconfig:/opt/dey/2.4-r2/ccimx6ulsbc/dey-image-qt-fb/sysroots/cortexa7hf-neon-dey-linux-gnueabi/usr/share/pkgconfig:/opt/dey/2.4-r2/ccimx6ulsbc/dey-image-qt-fb/sysroots/cortexa7hf-neon-dey-linux-gnueabi/usr/lib/arm-dey-linux-gnueabi/pkgconfig
export PKG_CONFIG_LIBDIR
exec pkg-config "$@"

#!/bin/bash

CURRENT_DIR=`pwd`
if [ $CURRENT_DIR != $LINUX_BUILDS/build ]; then
    echo "Not in correct directory. Move to" $LINUX_BUILDS/build
    exit 1
fi

rm -rf ./*
../gcc-5.5.0/configure --build=$LINUX_BUILD\
		       --host=$LINUX_TARGET\
		       --target=$LINUX_TARGET\
		       --prefix=/mnt/linux/root\
		       --with-native-system-header-dir=/include\
		       --enable-languages=c,c++\
		       --disable-multilib\
		       --disable-shared\
		       --disable-nls\

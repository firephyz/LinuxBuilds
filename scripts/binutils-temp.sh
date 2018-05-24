#!/bin/bash

CURRENT_DIR=`pwd`
if [ $CURRENT_DIR != $LINUX_BUILDS/build ]; then
    echo "Not in correct directory. Move to" $LINUX_BUILDS/build
    exit 1
fi

rm -rf ./*
$LINUX_BUILDS/binutils-2.29.1/configure --build=$LINUX_BUILD\
					--host=$LINUX_TARGET\
					--target=$LINUX_TARGET\
					--prefix=/mnt/linux/root\
					--disable-multilib

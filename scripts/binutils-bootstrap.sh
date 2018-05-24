#!/bin/bash

CURRENT_DIR=`pwd`
if [ $CURRENT_DIR != $LINUX_BUILDS/build ]; then
    echo "Not in correct directory. Move to" $LINUX_BUILDS/build
    exit 1
fi

#			     --with-local-prefix=$LINUX_TOOLS/$LINUX_TARGET\
rm -rf ./*
../binutils-2.29.1/configure --build=$LINUX_BUILD\
			     --host=$LINUX_HOST\
			     --target=$LINUX_TARGET\
			     --prefix=$LINUX_TOOLS\
			     --disable-multilib
#			     '#--with-lib-path=$LINUX_TOOLS/$LINUX_TARGET/lib

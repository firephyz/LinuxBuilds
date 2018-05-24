#!/bin/bash
# prefix gets hardcoded into various places and we want glibc to be the main
# c library on the system so just set prefix to nothing. Location with default to /lib/libc.so.
# If prefix had been $SYSROOT, then the gcc build 2 gets confused and looks for $SYSROOT/lib/libc.so
# in $SYSROOT/lib/libc.so/$SYSROOT/lib/libc.so
# Since prefix defaults to that path, we must install with 'make install_root=$SYSROOT install'

CURRENT_DIR=`pwd`
if [ $CURRENT_DIR != $LINUX_BUILDS/build ]; then
    echo "Not in correct directory. Move to" $LINUX_BUILDS/build
    exit 1
fi

#			--with-local-prefix=$LINUX_TOOLS/$LINUX_TARGET\
rm -rf ./*
../glibc-2.26/configure --build=$LINUX_BUILD\
			--host=$LINUX_TARGET\
			--target=$LINUX_TARGET\
			--prefix=\
			--with-headers=$LINUX_CROSS/include\
			--enable-kernel=4.4
			

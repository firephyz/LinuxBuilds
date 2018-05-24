#!/bin/bash

CURRENT_DIR=`pwd`
if [ $CURRENT_DIR != $LINUX_BUILDS/build ]; then
    echo "Not in correct directory. Move to" $LINUX_BUILDS/build
    exit 1
fi

rm -rf ./*
#		       --with-sysroot=$LINUX_TOOLS/$LINUX_TARGET\
../gcc-5.5.0/configure --build=$LINUX_BUILD\
		       --host=$LINUX_HOST\
		       --target=$LINUX_TARGET\
		       --prefix=$LINUX_TOOLS\
		       --with-sysroot=$LINUX_CROSS\
		       --with-native-system-header-dir=/include\
		       --enable-languages=c,c++\
		       --disable-multilib\
		       --disable-nls\
		       # --disable-libquadmath\
		       # --disable-libgomp\
		       # --disable-libatomic\
		       # --disable-libssp\
		       # --disable-libvtv\
		       # --disable-decimal-float\
		       # --disable-libmpx\
		       # --disable-libstdcxx

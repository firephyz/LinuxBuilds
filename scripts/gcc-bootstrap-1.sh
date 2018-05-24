#!/bin/bash

CURRENT_DIR=`pwd`
if [ $CURRENT_DIR != $LINUX_BUILDS/build ]; then
    echo "Not in correct directory. Move to" $LINUX_BUILDS/build
    exit 1
fi

rm -rf ./*
#--with-local-prefix=$LINUX_TOOLS\
#--with-native-system-header-dir=$LINUX_TOOLS/$LINUX_TARGET/include\
# ../gcc-5.5.0/configure --build=$LINUX_BUILD\
# 		       --host=$LINUX_HOST\
# 		       --target=$LINUX_TARGET\
# 		       --prefix=$LINUX_TOOLS/gcc\
# 		       --with-local-prefix=$LINUX_CROSS/usr/local\ # this compiler should search for target headers on the target machine.
# 		       --enable-languages=c\
#		       --disable-threads\ # Cross build won't have target thread support yet
#		       --disable-libssp\ # Cross build 
# 		       --disable-multilib\ # Don't need to make 32 bit code
# 		       --disable-shared\ # We can use this systems dynamic linker for libs
# 		       --disable-libada\ # Don't need ada language
# 		       --disable-nls # Don't need language stuff
../gcc-5.5.0/configure --build=$LINUX_BUILD\
		       --host=$LINUX_HOST\
		       --target=$LINUX_TARGET\
		       --prefix=$LINUX_TOOLS\
		       --enable-languages=c\
		       --disable-threads\
		       --disable-libssp\
		       --disable-libquadmath\
		       --disable-libatomic\
		       --disable-libgomp\
		       --disable-multilib\
		       --disable-shared\
		       --disable-libada\
		       --disable-nls

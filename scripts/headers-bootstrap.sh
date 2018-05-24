#!/bin/bash

CURRENT_DIR=`pwd`
if [ $CURRENT_DIR != $LINUX_BUILDS/build ]; then
    echo "Not in correct directory. Move to" $LINUX_BUILDS/build
    exit 1
fi

LINUX_SOURCE_PATH=`ls -1 ../ | grep linux`
cd $LINUX_BUILDS/$LINUX_SOURCE_PATH
make mrproper
#cp $LINUX_SCRIPTS/files/kernel.config ../$LINUX_SOURCE_PATH/.config
make ARCH=x86_64 INSTALL_HDR_PATH=$LINUX_CROSS headers_install

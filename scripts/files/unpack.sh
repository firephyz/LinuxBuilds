#!/bin/bash

cd $LINUX_BUILDS
rm -rf ./*

echo $'Unpacking source files...\n'
TAR_FILES=`ls $LINUX_SOURCES -1`
for f in $TAR_FILES; do
    if [ ! -d $LINUX_SOURCES/$f ]; then
	echo "Unpacking $f..."
	tar -xf $LINUX_SOURCES/$f

	#Remember gcc path name for later
	if [ ! -z `echo $f | grep gcc` ]; then
	    GCC_DIR=`echo $f | sed -e 's/\.tar\.gz//'`
	fi
    fi
done
mkdir -p build

# Get GCC required subpackages
(cd $GCC_DIR; ./contrib/download_prerequisites)

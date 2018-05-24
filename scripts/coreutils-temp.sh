#!/bin/bash

../coreutils-8.28/configure --prefix=/mnt/linux/root\
			    --build=$LINUX_BUILD\
			    --host=$LINUX_HOST\
			    --enable-threads=posix\
			    --disable-nls\

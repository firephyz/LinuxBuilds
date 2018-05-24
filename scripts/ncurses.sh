#!/bin/bash

../ncurses-6.1/configure --prefix=/mnt/linux/root\
			 --build=$LINUX_BUILD\
			 --host=$LINUX_TARGET\
			 --with-build-cc=/mnt/linux/tools/bin/x86_64-kyle-linux-gnu-gcc\
			 --with-build-cpp=/mnt/linux/tools/bin/x86_64-kyle-linux-gnu-cpp\
			 --enable-widec\
			 --with-shared

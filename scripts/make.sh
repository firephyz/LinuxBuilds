#!/bin/bash

../make-4.2/configure --prefix=/mnt/linux/root\
		      --build=$LINUX_BUILD\
		      --host=$LINUX_TARGET\
		      --disable-nls\

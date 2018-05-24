#!/bin/bash

../glibc-2.26/configure --prefix=$LINUX_CROSS/$LINUX_TARGET\
			--build=$LINUX_BUILD\
			--host=$LINUX_TARGET\
			--target=$LINUX_TARGET\
			--enable-kernel=4.4
			

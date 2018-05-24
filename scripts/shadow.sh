#!/bin/bash

../shadow-4.5/configure --prefix=/mnt/linux/root\
			--build=$LINUX_BUILD\
			--host=$LINUX_HOST\
			--sysconfdir=/etc\
			--enable-shared

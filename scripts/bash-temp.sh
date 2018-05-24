#!/bin/bash

../bash-4.4.18/configure --prefix=/mnt/linux\
			 --build=$LINUX_BUILD\
			 --host=$LINUX_TARGET

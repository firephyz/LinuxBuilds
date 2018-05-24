Do a cp from scripts/files/kernel.config to $LINUX_SOURCE/.config
make mrproper
make menuconfig and customize
make ARCH=x86_64 CROSS_COMPILE=$LINUX_TOOLS/bin/$LINUX_TARGET-
make INSTALL_PATH= install
make INSTALL_MOD_PATH=$LINUX_CROSS modules_install

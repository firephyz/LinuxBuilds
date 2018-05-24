set +h
umask 022

LC_ALL=POSIX
PATH=/mnt/linux/tools/bin:/usr/bin:/usr/sbin:/bin:/sbin
PS1=$'[\[\e[01;31m\]\#\[\e[00m\]] \[\e[01;32m\]\u\[\e[00m\]:\[\e[01;34m\]\w\[\e[00m\] $ '
LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.zip=01;31:*.gz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.jar=01;31'

export LC_ALL PATH PS1 LS_COLORS

LINUX_BUILD=x86_64-pc-linux-gnu
LINUX_HOST=x86_64-pc-linux-gnu
LINUX_TARGET=x86_64-kyle-linux-gnu
export LINUX_{BUILD,HOST,TARGET}

LINUX_SCRIPTS=/mnt/linux/scripts
LINUX_BUILDS=/mnt/linux/builds
LINUX_SOURCES=/mnt/linux/sources
LINUX_TOOLS=/mnt/linux/tools
LINUX_CROSS=/mnt/linux/root/cross

export LINUX_{BUILDS,SOURCES,TOOLS,SCRIPTS,CROSS}

alias ls='ls --color'

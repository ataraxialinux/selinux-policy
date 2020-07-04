#!/usr/bin/sh

make bare -j
make conf NAME=mls TYPE=mls DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=deny -j
make all NAME=mls TYPE=mls DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=deny -j
make install DESTDIR="$1" NAME=mls TYPE=mls DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=deny -j
make install-headers DESTDIR="$1" NAME=mls TYPE=mls DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=deny -j

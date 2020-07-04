#!/usr/bin/sh

mkdir -p $1/var/lib/selinux/mls

make bare -j
make conf NAME=mls TYPE=mls DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=deny -j
make base.pp NAME=mls TYPE=mls DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=deny -j
make validate modules NAME=mls TYPE=mls DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=deny -j
make install DESTDIR="$1" NAME=mls TYPE=mls DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=deny -j
make install-appconfig DESTDIR="$1" NAME=mls TYPE=mls DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=deny -j
make install-headers DESTDIR="$1" NAME=mls TYPE=mls DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=deny -j
make load DESTDIR="$1" NAME=mls TYPE=mls DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=deny SEMODULE="semodule -p $1 -X 100 " -j

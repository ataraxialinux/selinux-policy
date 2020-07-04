#!/usr/bin/sh

mkdir -p $1/var/lib/selinux/mls $1/var/lib/selinux/targeted

make bare -j
make conf NAME=targeted TYPE=mcs DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=allow -j
make base.pp NAME=targeted TYPE=mcs DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=allow -j
make validate modules NAME=targeted TYPE=mcs DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=allow -j
make install DESTDIR="$1" NAME=targeted TYPE=mcs DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=allow -j
make install-appconfig DESTDIR="$1" NAME=targeted TYPE=mcs DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=allow -j
make install-headers DESTDIR="$1" NAME=targeted TYPE=mcs DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=allow -j
make load DESTDIR="$1" NAME=targeted TYPE=mcs DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=allow SEMODULE="semodule -p $1 -X 100 " -j

make bare -j
make conf NAME=mls TYPE=mls DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=deny -j
make base.pp NAME=mls TYPE=mls DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=deny -j
make validate modules NAME=mls TYPE=mls DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=deny -j
make install DESTDIR="$1" NAME=mls TYPE=mls DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=deny -j
make install-appconfig DESTDIR="$1" NAME=mls TYPE=mls DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=deny -j
make install-headers DESTDIR="$1" NAME=mls TYPE=mls DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=deny -j
make load DESTDIR="$1" NAME=mls TYPE=mls DISTRO=redhat SYSTEMD=y UBAC=n MONOLITHIC=n DIRECT_INITRC=y UNK_PERMS=deny SEMODULE="semodule -p $1 -X 100 " -j

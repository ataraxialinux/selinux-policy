#!/usr/bin/sh
make bare
make conf NAME=mls DISTRO=redhat SYSTEMD=y UBAC=y
make NAME=mls DISTRO=redhat SYSTEMD=y UBAC=y
make install DESTDIR="$1" NAME=mls DISTRO=redhat SYSTEMD=y UBAC=y
make install-headers DESTDIR="$1" NAME=mls DISTRO=redhat SYSTEMD=y UBAC=y

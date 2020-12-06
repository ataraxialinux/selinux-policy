#!/usr/bin/sh

[ -z "$1" ] && exit 1

ver="2.20200818"
cwd="$PWD"
dir="$(realpath $1)"
[ ! -d "$(realpath $dir)" ] && mkdir -p $dir/root/var/lib/selinux/mls

cd $dir
curl -C - -L -O https://github.com/SELinuxProject/refpolicy/releases/download/RELEASE_${ver/./_}/refpolicy-$ver.tar.bz2

bsdtar -xvf refpolicy-$ver.tar.bz2

cd refpolicy
make -j UNK_PERMS=deny NAME=mls TYPE=mls DISTRO=redhat SYSTEMD=y UBAC=n DIRECT_INITRC=n MONOLITHIC=n MLS_CATS=1024 MCS_CATS=1024 bare
make -j UNK_PERMS=deny NAME=mls TYPE=mls DISTRO=redhat SYSTEMD=y UBAC=n DIRECT_INITRC=n MONOLITHIC=n MLS_CATS=1024 MCS_CATS=1024 conf
make -j UNK_PERMS=deny NAME=mls TYPE=mls DISTRO=redhat SYSTEMD=y UBAC=n DIRECT_INITRC=n MONOLITHIC=n MLS_CATS=1024 MCS_CATS=1024 DESTDIR="$dir/root" install  install-appconfig
make -j UNK_PERMS=deny NAME=mls TYPE=mls DISTRO=redhat SYSTEMD=y UBAC=n DIRECT_INITRC=n MONOLITHIC=n MLS_CATS=1024 MCS_CATS=1024 SEMODULE="semodule -p $dir/root -X 100 " DESTDIR="$dir/root" load

rm -f "$dir/root"/var/lib/selinux/mls/active/*.linked

install -Dm644 "$cwd"/config "$dir/root"/etc/selinux/config

cd $dir/root
bsdtar -cJvf ../policy.tar.xz .

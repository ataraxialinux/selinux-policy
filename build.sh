#!/usr/bin/sh

[ -z "$1" ] && exit 1

cwd="$PWD"
dir="$(realpath $1)"
[ ! -d "$(realpath $dir)" ] && mkdir -p $dir/root/var/lib/selinux/mls

cd $dir
wget https://github.com/fedora-selinux/selinux-policy/archive/rawhide.tar.gz -O policy.tar.gz
wget https://github.com/fedora-selinux/selinux-policy-contrib/archive/rawhide.tar.gz -O contrib.tar.gz
wget https://github.com/containers/container-selinux/archive/master.tar.gz -O container.tar.gz

bsdtar -xvf policy.tar.gz
bsdtar -xvf contrib.tar.gz
bsdtar -xvf container.tar.gz
mv -v selinux-policy-contrib-rawhide/* selinux-policy-rawhide/policy/modules/contrib/
mv -v container-selinux-master/* selinux-policy-rawhide/policy/modules/contrib/

cd selinux-policy-rawhide
make -j UNK_PERMS=deny NAME=mls TYPE=mls DISTRO=redhat UBAC=n DIRECT_INITRC=n MONOLITHIC=n MLS_CATS=1024 MCS_CATS=1024 bare
make -j UNK_PERMS=deny NAME=mls TYPE=mls DISTRO=redhat UBAC=n DIRECT_INITRC=n MONOLITHIC=n MLS_CATS=1024 MCS_CATS=1024 conf

cp "$cwd"/stuff/users-mls policy/users
cp "$cwd"/stuff/booleans-mls.conf policy/booleans.conf
cp "$cwd"/stuff/modules-mls-base.conf policy/modules-base.conf
cp "$cwd"/stuff/modules-mls-base.conf policy/modules.conf
cp "$cwd"/stuff/modules-mls-contrib.conf policy/modules-contrib.conf
cat "$cwd"/stuff/modules-mls-contrib.conf >> policy/modules.conf

make -j UNK_PERMS=deny NAME=mls TYPE=mls DISTRO=redhat UBAC=n DIRECT_INITRC=n MONOLITHIC=n MLS_CATS=1024 MCS_CATS=1024 base.pp
make -j validate UNK_PERMS=deny NAME=mls TYPE=mls DISTRO=redhat UBAC=n DIRECT_INITRC=n MONOLITHIC=n MLS_CATS=1024 MCS_CATS=1024 modules
make -j UNK_PERMS=deny NAME=mls TYPE=mls DISTRO=redhat UBAC=n DIRECT_INITRC=n MONOLITHIC=n DESTDIR="$dir/root" MLS_CATS=1024 MCS_CATS=1024 install
make -j UNK_PERMS=deny NAME=mls TYPE=mls DISTRO=redhat UBAC=n DIRECT_INITRC=n MONOLITHIC=n DESTDIR="$dir/root" MLS_CATS=1024 MCS_CATS=1024 install-appconfig
make -j UNK_PERMS=deny NAME=mls TYPE=mls DISTRO=redhat UBAC=n DIRECT_INITRC=n MONOLITHIC=n DESTDIR="$dir/root" MLS_CATS=1024 MCS_CATS=1024 SEMODULE="semodule -p $dir/root -X 100 " load

mkdir -p "$dir/root"//etc/selinux/mls/logins
touch "$dir/root"/etc/selinux/mls/contexts/files/file_contexts.subs
install -m0644 "$cwd"/stuff/securetty_types-mls "$dir/root"/etc/selinux/mls/contexts/securetty_types
install -m0644 "$cwd"/stuff/file_contexts.subs_dist "$dir/root"/etc/selinux/mls/contexts/files
install -m0644 "$cwd"/stuff/setrans-mls.conf "$dir/root"/etc/selinux/mls/setrans.conf
install -m0644 "$cwd"/stuff/customizable_types "$dir/root"/etc/selinux/mls/contexts/customizable_types
touch "$dir/root"/etc/selinux/mls/contexts/files/file_contexts.bin
touch "$dir/root"/etc/selinux/mls/contexts/files/file_contexts.local
touch "$dir/root"/etc/selinux/mls/contexts/files/file_contexts.local.bin
rm -rf "$dir/root"/etc/selinux/mls/contexts/netfilter_contexts
rm -rf "$dir/root"/etc/selinux/mls/modules/active/policy.kern
rm -f "$dir/root"/var/lib/selinux/mls/active/*.linked

cd $dir/root
bsdtar -cJvf ../policy.tar.xz .

#!/usr/bin/sh

set -e

msg() { printf "\033[1;34m::\033[0m %s\n" "$@"; }

pushd () { command pushd "$@" > /dev/null; }
popd () { command popd "$@" > /dev/null; }

main() {
	local ver="87c4adc7903ea5814865c16f2ad4d2451df5b324"
	local opts="DISTRO=redhat SYSTEMD=y DIRECT_INITRC=y MONOLITHIC=n MLS_CATS=1024 MCS_CATS=1024"

	local cwd="$(pwd)"
	local stuff="$cwd/stuff"
	local build="$cwd/build"
	local srcs="$build/sources"
	local root="$build/root"

	msg "Preparing build environment"
	rm -rf "$build"
	mkdir -p "$srcs" "$root/var/lib/selinux/mls" "$root/etc/selinux"

	msg "Dwonloading sources"
	cd "$srcs"
	curl -C - -L -O https://github.com/SELinuxProject/refpolicy/archive/$ver.tar.gz
	bsdtar -xvf $ver.tar.gz

	msg "Building multi-level security policy"
	cd refpolicy-$ver
	patch -Np1 -i "$stuff"/0001-Branch-update.patch
	patch -Np1 -i "$stuff"/0002-various.patch
	make -j clean
	make -j NAME=mls TYPE=mls UBAC=n UNK_PERMS=deny $opts bare
	make -j NAME=mls TYPE=mls UBAC=n UNK_PERMS=deny $opts conf
	make -j NAME=mls TYPE=mls UBAC=n UNK_PERMS=deny $opts DESTDIR="$root" install  install-appconfig
	make -j NAME=mls TYPE=mls UBAC=n UNK_PERMS=deny $opts SEMODULE="semodule -p $root -X 100 " DESTDIR="$root" load

	msg "Configuring SELinux policy"
	cat > "$root"/etc/selinux/mls/setrans.conf <<-EOF
		#
		# Multi-Level Security translation table for SELinux
		# 
		# Uncomment the following to disable translation libary
		# disable=1
		#
		# Objects can be labeled with one of 16 levels and be categorized with 0-1023 
		# categories defined by the admin.
		# Objects can be in more than one category at a time.
		# Users can modify this table to translate the MLS labels for different purpose.
		#
		# Assumptions: using below MLS labels.
		#  SystemLow
		#  SystemHigh
		#  Unclassified 
		#  Secret with compartments A and B.
		# 
		# SystemLow and SystemHigh
		s0=SystemLow
		s15:c0.c1023=SystemHigh
		s0-s15:c0.c1023=SystemLow-SystemHigh

		# Unclassified level
		s1=Unclassified

		# Secret level with compartments
		s2=Secret
		s2:c0=A
		s2:c1=B

		# ranges for Unclassified
		s0-s1=SystemLow-Unclassified
		s1-s2=Unclassified-Secret
		s1-s15:c0.c1023=Unclassified-SystemHigh

		# ranges for Secret with compartments
		s0-s2=SystemLow-Secret
		s0-s2:c0=SystemLow-Secret:A
		s0-s2:c1=SystemLow-Secret:B
		s0-s2:c0,c1=SystemLow-Secret:AB
		s1-s2:c0=Unclassified-Secret:A
		s1-s2:c1=Unclassified-Secret:B
		s1-s2:c0,c1=Unclassified-Secret:AB
		s2-s2:c0=Secret-Secret:A
		s2-s2:c1=Secret-Secret:B
		s2-s2:c0,c1=Secret-Secret:AB
		s2-s15:c0.c1023=Secret-SystemHigh
		s2:c0-s2:c0,c1=Secret:A-Secret:AB
		s2:c0-s15:c0.c1023=Secret:A-SystemHigh
		s2:c1-s2:c0,c1=Secret:B-Secret:AB
		s2:c1-s15:c0.c1023=Secret:B-SystemHigh
		s2:c0,c1-s15:c0.c1023=Secret:AB-SystemHigh
	EOF
	cat > "$root"/etc/selinux/config <<-EOF
		# This file controls the state of SELinux on the system.
		# SELINUX= can take one of these three values:
		#     enforcing - SELinux security policy is enforced.
		#     permissive - SELinux prints warnings instead of enforcing.
		#     disabled - No SELinux policy is loaded.
		SELINUX=enforcing
		# SELINUXTYPE= can take one of these values:
		#     mls - Multi Level Security protection.
		SELINUXTYPE=mls
	EOF

	msg "Creating policy archive"
	pushd "$root"
		bsdtar -cJvf "$build"/policy.tar.xz .
	popd

	msg "Policy has been built!"
}

main

exit 0


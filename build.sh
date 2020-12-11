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
	mkdir -p "$srcs" "$root/var/lib/selinux/targeted" "$root/etc/selinux"

	msg "Dwonloading sources"
	cd "$srcs"
	curl -C - -L -O https://github.com/SELinuxProject/refpolicy/archive/$ver.tar.gz
	bsdtar -xvf $ver.tar.gz

	msg "Building multi-level security policy"
	cd refpolicy-$ver
	patch -Np1 -i "$stuff"/0001-Branch-update.patch
	patch -Np1 -i "$stuff"/0002-various.patch
	make -j clean
	make -j NAME=targeted TYPE=mcs UBAC=y UNK_PERMS=allow $opts bare
	make -j NAME=targeted TYPE=mcs UBAC=y UNK_PERMS=allow $opts conf
	make -j NAME=targeted TYPE=mcs UBAC=y UNK_PERMS=allow $opts DESTDIR="$root" install  install-appconfig
	make -j NAME=targeted TYPE=mcs UBAC=y UNK_PERMS=allow $opts SEMODULE="semodule -p $root -X 100 " DESTDIR="$root" load

	msg "Configuring SELinux policy"
	cat > "$root"/etc/selinux/targeted/setrans.conf <<-EOF
		#
		# Multi-Category Security translation table for SELinux
		# 
		# Uncomment the following to disable translation libary
		# disable=1
		#
		# Objects can be categorized with 0-1023 categories defined by the admin.
		# Objects can be in more than one category at a time.
		# Categories are stored in the system as c0-c1023.  Users can use this
		# table to translate the categories into a more meaningful output.
		# Examples:
		# s0:c0=CompanyConfidential
		# s0:c1=PatientRecord
		# s0:c2=Unclassified
		# s0:c3=TopSecret
		# s0:c1,c3=CompanyConfidentialRedHat
		s0=SystemLow
		s0-s0:c0.c1023=SystemLow-SystemHigh
		s0:c0.c1023=SystemHigh
	EOF
	cat > "$root"/etc/selinux/config <<-EOF
		# This file controls the state of SELinux on the system.
		# SELINUX= can take one of these three values:
		#     enforcing - SELinux security policy is enforced.
		#     permissive - SELinux prints warnings instead of enforcing.
		#     disabled - No SELinux policy is loaded.
		SELINUX=enforcing
		# SELINUXTYPE= can take one of these three values:
		#     targeted - Targeted processes are protected.
		SELINUXTYPE=targeted
	EOF

	msg "Creating policy archive"
	pushd "$root"
		bsdtar -cJvf "$build"/policy.tar.xz .
	popd

	msg "Policy has been built!"
}

main

exit 0


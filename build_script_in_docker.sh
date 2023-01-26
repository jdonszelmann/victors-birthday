#!/usr/bin/env bash
set -xe

pacman -Syu --noconfirm

# creating iso folder
cp -r /usr/share/archiso/configs/releng/ archlive

# creating profile
cp /resources/profiledef.sh archlive/profiledef.sh
cp /resources/packages.x86_64 archlive/packages.x86_64
cp /resources/bootstrap_packages.x86_64 archlive/bootstrap_packages.x86_64
cp /resources/pacman.conf archlive/pacman.conf
cp /resources/mkinitcpio.conf archlive/airootfs/etc/mkinitcpio.conf

# creating users
cp /resources/passwd archlive/airootfs/etc/passwd
cp /resources/group archlive/airootfs/etc/group
cp /resources/shadow archlive/airootfs/etc/shadow

# use grub instead!
# rm -rf archlive/efiboot
# rm -rf archlive/syslinux

# setup grub cfg
cp /resources/grub.cfg archlive/grub/grub.cfg

# remove installation stuff
rm -rf archlive/airootfs/usr/local/bin/Installation_guide

# build the iso
mkdir /tmp/work
mkdir -p /tmp/work/iso/arch/boot/
mkdir out
mkarchiso -v -w /tmp/work -o ./out ./archlive

ls out
cp /out/*.iso /resources/victors-birthday.iso

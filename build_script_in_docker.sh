#!/usr/bin/env bash
set -xe

ls -la /repo

pacman -Syu python --noconfirm

# creating iso folder
cp -r /usr/share/archiso/configs/releng/ archlive

# creating profile
cp /resources/profiledef.sh archlive/profiledef.sh
cp /resources/packages.x86_64 archlive/packages.x86_64
cat /resources/packages.x86_64.uncached >> archlive/packages.x86_64
cp /resources/bootstrap_packages.x86_64 archlive/bootstrap_packages.x86_64
cp /resources/pacman.conf archlive/pacman.conf
cp /resources/mkinitcpio.conf archlive/airootfs/etc/mkinitcpio.conf
cp /resources/motd archlive/airootfs/etc/motd

# creating users
cp /resources/passwd archlive/airootfs/etc/passwd
cp /resources/group archlive/airootfs/etc/group
cp /resources/shadow archlive/airootfs/etc/shadow

# log in as user 1
echo -e "[Service]\nExecStart=\nExecStart=-/sbin/agetty -o '-p -f -- \\u' --noclear --autologin year1 - $TERM" > archlive/airootfs/etc/systemd/system/getty@tty1.service.d/autologin.conf
echo "v" > archlive/airootfs/etc/hostname

# use grub instead!
rm -rf archlive/efiboot

# setup grub cfg
cp /resources/grub.cfg archlive/grub/grub.cfg

# remove installation stuff
rm -rf archlive/airootfs/usr/local/bin/Installation_guide

# create home dirs
for YEAR in $(python resources/generate_shadow.py list | grep -v root)
do
    mkdir -p archlive/airootfs/home/"$YEAR"
    cp resources/submit.py -p archlive/airootfs/home/"$YEAR"/submit
    chmod +x archlive/airootfs/home/"$YEAR"/submit
    echo "export YEAR=$YEAR" > archlive/airootfs/home/"$YEAR"/.profile
    echo "export YEAR=$YEAR" > archlive/airootfs/home/"$YEAR"/.zprofile
    echo "export PATH=/home/$YEAR:$PATH" >> archlive/airootfs/home/"$YEAR"/.profile
    echo "export PATH=/home/$YEAR:$PATH" >> archlive/airootfs/home/"$YEAR"/.zprofile
    ls -la archlive/airootfs/home/"$YEAR"
done

# run per-year install scripts
find . -name install.sh | xargs -n 1 | bash

# build the iso
mkdir /tmp/work
mkdir -p /tmp/work/iso/arch/boot/
mkdir out
mkarchiso -v -w /tmp/work -o ./out ./archlive

ls out
cp /out/*.iso /resources/victors-birthday.iso

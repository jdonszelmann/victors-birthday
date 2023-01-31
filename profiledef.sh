#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="vs-birthday"
iso_label="vs-birthday"
iso_publisher="bed warm"
iso_application="vs birthday"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=(
    'bios.syslinux.mbr' 'bios.syslinux.eltorito'
    'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
    'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito'
)
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'zstd' '-b' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
)
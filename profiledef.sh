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
  ["/home/year1/submit"]="1001:1001:755"
  ["/home/year2/submit"]="1002:1002:755"
  ["/home/year3/submit"]="1003:1003:755"
  ["/home/year4/submit"]="1004:1004:755"
  ["/home/year5/submit"]="1005:1005:755"
  ["/home/year6/submit"]="1006:1006:755"
  ["/home/year7/submit"]="1007:1007:755"
  ["/home/year8/submit"]="1008:1008:755"
  ["/home/year9/submit"]="1009:1009:755"
  ["/home/year10/submit"]="1010:1010:755"
  ["/home/year11/submit"]="1011:1011:755"
  ["/home/year12/submit"]="1012:1012:755"
  ["/home/year13/submit"]="1013:1013:755"
  ["/home/year14/submit"]="1014:1014:755"
  ["/home/year15/submit"]="1015:1015:755"
  ["/home/year16/submit"]="1016:1016:755"
  ["/home/year17/submit"]="1017:1017:755"
  ["/home/year18/submit"]="1018:1018:755"
  ["/home/year19/submit"]="1019:1019:755"
  ["/home/year20/submit"]="1020:1020:755"
  ["/home/year21/submit"]="1021:1021:755"
  ["/home/year22/submit"]="1022:1022:755"
  ["/home/year23/submit"]="1023:1023:755"
  ["/home/year24/submit"]="1024:1024:755"

  # specific permissions
  ["/home/year16/start.sh"]="1016:1016:755"
)

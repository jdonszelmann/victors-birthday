

package=archiso
if pacman -Qs $package > /dev/null ; then
else
    echo "Please install the archiso package (archlinux only)"
    exit 1
fi

cp -r /usr/share/archiso/configs/profile/ archlive



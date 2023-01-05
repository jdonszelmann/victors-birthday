

package=archiso
if pacman -Qs $package > /dev/null ; then
    echo "archiso package found"
else
    echo "Please install the archiso package (archlinux only)"
    exit 1
fi

rm -rf ./archlive || true

echo "creating iso folder"
cp -r /usr/share/archiso/configs/releng/ archlive
echo "setting custom pacman conf"
cp ./pacman.conf archlive/pacman.conf


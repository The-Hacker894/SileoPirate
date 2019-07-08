#!/bin/sh

chmod 0755 xyz.skylarmccauley.sileopirate/DEBIAN
chmod 0555 xyz.skylarmccauley.sileopirate/DEBIAN/postinst
chmod 0555 xyz.skylarmccauley.sileopirate/DEBIAN/prerm

chmod 0755 xyz.skylarmccauley.sileopirate.helper/DEBIAN
chmod 0555 xyz.skylarmccauley.sileopirate.helper/DEBIAN/postinst
chmod 0555 xyz.skylarmccauley.sileopirate.helper/DEBIAN/prerm

chmod 0755 xyz.skylarmccauley.sileopirate.theme/DEBIAN

find . -name ".DS_Store" -delete

mv default/*.strings.plist default/*.strings
mv default/*.stringsdict.plist default/*.stringsdict
mv pirate/*.strings.plist pirate/*.strings
mv pirate/*.stringsdict.plist pirate/*.stringsdict

dpkg -b xyz.skylarmccauley.sileopirate
dpkg -b xyz.skylarmccauley.sileopirate.helper
dpkg -b xyz.skylarmccauley.sileopirate.theme
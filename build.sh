#!/bin/sh

chmod 0755 xyz.skylarmccauley.sileopirate/DEBIAN
chmod 0555 xyz.skylarmccauley.sileopirate/DEBIAN/postinst
chmod 0555 xyz.skylarmccauley.sileopirate/DEBIAN/prerm
chmod a+x xyz.skylarmccauley.sileopirate/usr/bin/repirate

chmod 0755 xyz.skylarmccauley.sileopirate.helper/DEBIAN

chmod 0755 xyz.skylarmccauley.sileopirate.theme/DEBIAN

find . -name ".DS_Store" -delete

mv pirate/Categories.strings.plist pirate/Categories.strings
mv pirate/Errors.strings.plist pirate/Errors.strings
mv pirate/Localizable.strings.plist pirate/Localizable.strings
mv pirate/Localizable.stringsdict.plist pirate/Localizable.stringsdict

mv default/Categories.strings.plist default/Categories.strings
mv default/Errors.strings.plist default/Errors.strings
mv default/Localizable.strings.plist default/Localizable.strings
mv default/Localizable.stringsdict.plist default/Localizable.stringsdict

dpkg -b xyz.skylarmccauley.sileopirate
dpkg -b xyz.skylarmccauley.sileopirate.helper
dpkg -b xyz.skylarmccauley.sileopirate.theme
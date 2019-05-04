#!/bin/sh

chmod 0755 xyz.skylarmccauley.sileopirate/DEBIAN
chmod 0555 xyz.skylarmccauley.sileopirate/DEBIAN/postinst
chmod 0555 xyz.skylarmccauley.sileopirate/DEBIAN/prerm

find . -name ".DS_Store" -delete

dpkg -b xyz.skylarmccauley.sileopirate

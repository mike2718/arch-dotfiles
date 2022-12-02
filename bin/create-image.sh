#!/usr/bin/bash
sudo umount /dev/sr0
blocks=$(isosize -d 2048 /dev/sr0)
dd if=/dev/sr0 of=dvd-image.iso bs=2048 count=$blocks status=progress
#eject /dev/sr0


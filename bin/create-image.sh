#!/bin/bash
sudo umount /dev/sr0
blocks=$(sudo isosize -d 2048 /dev/sr0)
sudo dd if=/dev/sr0 of=./output.iso bs=2048 count=$blocks status=progress
sudo chown mike:mike ./output.iso
sudo chmod 644 ./output.iso
ls -lh ./output.iso
isoinfo -d -i ./output.iso
file ./output.iso
#eject /dev/sr0
#sudo sync

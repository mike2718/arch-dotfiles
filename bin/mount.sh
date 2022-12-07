#!/usr/bin/bash
#
sudo systemctl stop syncthing
sudo systemctl stop smb
sudo systemctl stop transmission
sudo mount -U "85bc3aec-7e1b-47b5-84d7-626ebdb04156" -t ext4 -o defaults /share
#sudo mount -U "c544b144-518c-4c79-aa9d-0bab32932be4" -t ext4 -o defaults /share
#sudo systemctl start syncthing
sudo systemctl start transmission
sudo systemctl start smb

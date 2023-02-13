#!/bin/bash
#
sudo systemctl stop smb
sudo systemctl stop transmission
sudo systemctl stop syncthing@mike.service

sudo mount -U "85bc3aec-7e1b-47b5-84d7-626ebdb04156" -t ext4 -o defaults /share

#sudo systemctl restart transmission
#sudo systemctl restart syncthing@mike.service
sudo systemctl restart smb

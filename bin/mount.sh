#!/bin/bash

sudo systemctl stop smb
sudo systemctl stop rtorrent@mike
sudo systemctl stop lighttpd
sudo systemctl stop syncthing@mike.service
killall amuled

sudo mount -U "85bc3aec-7e1b-47b5-84d7-626ebdb04156" -t ext4 -o defaults /share

sudo systemctl restart lighttpd
sudo systemctl restart rtorrent@mike
sudo systemctl restart syncthing@mike.service
sudo systemctl restart smb
#amuled -f


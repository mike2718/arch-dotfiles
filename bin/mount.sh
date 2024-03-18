#!/bin/bash

sudo systemctl stop smb
sudo systemctl stop rtorrent@mike
sudo systemctl stop lighttpd
sudo systemctl stop syncthing@mike.service
killall amuled

sudo mount -U "7d381210-b86f-43c6-aee3-785ea2084200" -t ext4 -o defaults,nosuid,nodev,noatime /share

sudo systemctl restart lighttpd
sudo systemctl restart rtorrent@mike
sudo systemctl restart syncthing@mike.service
sudo systemctl restart smb
amuled -f


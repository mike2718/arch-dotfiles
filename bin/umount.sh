#!/bin/bash

sudo systemctl stop smb
sudo systemctl stop rtorrent@mike
sudo systemctl stop lighttpd
sudo systemctl stop syncthing@mike.service
killall amuled

sudo umount /share


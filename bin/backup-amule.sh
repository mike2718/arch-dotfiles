#!/bin/bash
rm -f /share/backup/amule-files.tar.xz
cd /home/mike/.aMule
tar -Jcvf /share/backup/amule-files.tar.xz  \
amule.conf \
clients.met \
cryptkey.dat \
emfriends.met \
GeoIP.dat \
ipfilter.dat \
ipfilter_static.dat \
key_index.dat \
known.met \
known2_64.met \
load_index.dat \
nodes.dat \
preferences.dat \
preferencesKad.dat \
server.met \
shareddir.dat \
src_index.dat

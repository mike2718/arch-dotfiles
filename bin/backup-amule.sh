#!/bin/bash
rm -f ~/amule-files.tar.xz
tar -Jcvf ~/amule-files.tar.xz \
.aMule/amule.conf \
.aMule/addresses.dat \
.aMule/canceled.met \
.aMule/clients.met \
.aMule/cryptkey.dat \
.aMule/emfriends.met \
.aMule/GeoIP.dat \
.aMule/ipfilter.dat \
.aMule/ipfilter_static.dat \
.aMule/key_index.dat \
.aMule/known.met \
.aMule/known2_64.met \
.aMule/load_index.dat \
.aMule/nodes.dat \
.aMule/preferences.dat \
.aMule/preferencesKad.dat \
.aMule/server.met \
.aMule/staticservers.dat \
.aMule/shareddir.dat \
.aMule/src_index.dat


#!/bin/bash
rm -f README.md
uname -mrs
bash --version | awk 'NR==1{print}'
/home/mike/bin/awk -version | awk 'NR==1{print}'
vim --version | awk 'NR==1{print}'
gpg --version | awk 'NR==1{print}'
ssh -V | awk 'NR==1{print}'
git --version | awk 'NR==1{print}'
transmission-daemon --version | awk 'NR==1{print}'
aria2c --version | awk 'NR==1{print}'
curl --version | awk 'NR==1{print}'

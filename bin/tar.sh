#!/usr/bin/bash
rm -f /home/mike/arch-dotfiles-raspberrypi.tar.zst
git archive --verbose --format=tar.zst --prefix=arch-dotfiles/ --output=/home/mike/arch-dotfiles-raspberrypi.tar.zst raspberrypi

#!/usr/bin/bash
rm -f /home/mike/arch-dotfiles.tar.zst
git archive --verbose --format=tar.zst --prefix=arch-dotfiles/ --output=/home/mike/arch-dotfiles.tar.zst main

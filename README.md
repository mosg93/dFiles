# voidFiles
Configuration files that I may, or not, use for my Void Linux boxes

## General

1. Connect to internet
2. git clone https://github.com/mosg93/dFiles.git ~/voidFiles
3. cd ~/voidFiles
4. chmod +x *.sh

## Void
1. ./1-strap.sh
2. ./2-basepkgs.sh
3. compile and install the 4-ectra-pkgs
4. install the downloaded fonts
5. ./4-extra-pkgs.sh
6../5-final-strap.sh
7. Install libxft-bgra; chadwm; st
8. try the instructions from 6-fprofile
9. mod the launch sh of chadwm to add setxkbmap and change the wallpaper dir

## Artix
basestrap /mnt base base-devel s6-base elogind-s6 linux-zen linux-firmware nano grub os-prober efibootmgr connman-s6 connman-gtk
1. ./art-ix.sh
2. install the downloaded fonts libs terminal and wm
3. final touches

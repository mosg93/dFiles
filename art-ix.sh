#!/bin/bash

# v 0.0.1 b1 
# To use in artix s6

#####################
# PKGS Installation #
#####################
########Repos#######
sudo pacman -S --noconfirm base-devel kitty alsa-tools alsa-utils audacious audacious-plugins firefox gvfs htop lxappearance maim mesa glu libva-mesa-driver vulkan-radeon mesa-vdpau libvdpau libva-vdpau-driver mpv neofetch feh ntfs-3g pavucontrol pipewire libpipewire pipewire-alsa pipewire-pulse picom polybar rofi sxhkd tar unzip unrar p7zip thunar xclip xorg yt-dlp fish wget curl aria2 ripgrep gcc make htop rustup firejail git viewnior xdg-user-dirs icewm neovim xorg-xsetroot gd libxft xf86-input-libinput xf86-video-amdgpu xorg-setxkbmap xorg-xrandr arandr xorg-xrdb xorg-xset xorgproto xorg-server xorg-server-common xorg-xauth xorg-xhost xdg-utils xcb-proto xcb-util zip udev psmisc harfbuzz acpi acpid acpid-s6 alsa-firmware alsa-lib alsa-plugins alsa-topology-conf alsa-ucm-conf alsa-utils alsa-utils-s6 atril bzip2 ca-certificates ca-certificates-mozilla ca-certificates-utils chromaprint connman-gtk curl dbus dbus-glib dbus-s6 ntfs-3g dosfstools efibootmgr efivar elogind elogind-s6 ffmpeg ffmpegthumbnailer ffmpegthumbs freetype2 udisks2 imlib2


# Creating directories
xdg-user-dirs-update
mkdir ~/.themes
mkdir -p ~/usr/share/{fonts,lib,env,scripts}
mkdir -p ~/usr/local/Suckless
mkdir ~/usr/{bin,var,opt,etc,mnt,media,tmp}

# Obtener archivos de internet
cd ~
git clone https://github.com/siduck/st.git ~/usr/local/Suckless/st
git clone https://github.com/void-linux/void-packages.git ~/usr/local/void-packages
git clone https://github.com/vlang/v ~/usr/local/v
git clone https://github.com/uditkarode/libxft-bgra ~/usr/share/lib/libxft-bgra
git clone https://github.com/siduck/chadwm --depth 1  ~/.config/chadwm

cd ~/usr/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/JetBrainsMono.zip
wget https://www.wfonts.com/download/data/2016/04/23/symbola/symbola.zip

cd ~/.themes
wget https://github.com/catppuccin/gtk/releases/download/v0.4.1/Catppuccin-Latte-Standard-Sapphire-Light.zip
wget https://github.com/catppuccin/gtk/releases/download/v0.4.1/Catppuccin-Mocha-Standard-Sapphire-Dark.zip

cd ~/usr/opt
wget https://github.com/Kron4ek/Conty/releases/download/1.21.11/conty.sh && chmod +x conty.sh
ln -s ~/usr/opt/conty.sh /usr/bin/Conty

cd ~/usr/tmp
git clone https://aur.archlinux.org/paru.git
git clone https://github.com/getzola/zola.git

# Final strap
cd ~
rm ~/.config/chadwm/chadwm/config.mk
rm ~/.config/chadwm/chadwm/config.def.h
#rm ~/usr/local/void-packages/etc/default.conf

mv ~/dFiles/src/chad.mk ~/.config/chadwm/chadwm/config.mk
mv ~/dFiles/src/chad.defh ~/.config/chadwm/chadwm/config.def.h
mv ~/dFiles/src/st.mk ~/usr/local/Suckless/st/config.mk

rustup default stable
cd ~/usr/tmp/paru
makepkg -si

####AUR####
#paru -S --noconfirm mcomix obsidian-bin pamixer fluent-cursor-theme-git fluent-icon-theme-git

#cd ~
#curl https://get.volta.sh | bash



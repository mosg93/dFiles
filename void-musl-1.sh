#!/bin/bash

# Nuevo BashRC
mv ~/dFiles/src/bashrc ~/.bashrc
mv ~/dFiles/src/alias ~/usr/share/alias
mv ~/dFiles/src/voidebv ~/usr/share/voidenv

# Paquetes binarios iniciales
sudo xbps-install -Sy --repository=https://avyssos.eu/repos/voidlinux/66/ void-unofficial-repo-66
sudo xbps-install -S void-repo-nonfree util-linux bsdtar coreutils binutils libatomic-devel base-devel curl wget linux-firmware-amd xtools git bat ripgrep fd exa procs helix neovim htop neofetch ntfs-3g p7zip dust fish-shell lazygit xdg-user-dirs imlib2 imlib2-devel libXft-devel libX11-devel harfbuzz-devel libXext-devel libXrender-devel libXinerama-devel gd-devel freetype-devel xorg-minimal xinit xhost xauth xorg-server xorg-util-macros picom gtk+3 icewm aria2 firefox feh mesa-dri vulkan-loader mesa-vulkan-radeon xf86-video-amdgpu xf86-input-libinput mesa-vaapi mesa-vdpau rofi xrdb maim xclip yt-dlp mpv volumeicon alsa-utils pulseaudio pavucontrol mcomix firejail setxkbmap psmisc rustup zola pcmanfm nerd-fonts-ttf audacious audacious-plugins geany connmand dbus elogin polkit dbus boot-66serv void-66-services s6-rc

# Directorios iniciales
xdg-user-dirs-update
mkdir ~/.themes
mkdir -p ~/usr/share/{fonts,lib,env,scripts}
mkdir -p ~/usr/local/Suckless
mkdir ~/usr/{bin,var,opt,etc,mnt,media,tmp}

# Obtener archivos de internet
cd ~
git clone https://github.com/siduck/st.git ~/usr/local/Suckless/st
git clone https://github.com/uditkarode/libxft-bgra ~/usr/share/lib/libxft-bgra
git clone https://github.com/siduck/chadwm --depth 1  ~/.config/chadwm

cd ~/usr/share/fonts
#wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/JetBrainsMono.zip
wget https://www.wfonts.com/download/data/2016/04/23/symbola/symbola.zip

cd ~/usr/opt
wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.4.16/Obsidian-1.4.16.AppImage && chmod a+x Obsidian-1.4.16.AppImage
ln -s ~/usr/opt/Obsidian-1.4.16.AppImage ~/usr/bin/obsidian

# Firefox Profile creation
mkdir -p ~/.mozilla/firefox/Hardened
cd ~/.mozilla/firefox/Hardened
curl -o user.js https://codeberg.org/Narsil/user.js/raw/branch/main/desktop/user.js

# Final strap
cd ~
rm ~/.config/chadwm/chadwm/config.mk
rm ~/.config/chadwm/chadwm/config.def.h
rm ~/usr/local/void-packages/etc/default.conf

mv ~/dFiles/src/chad.mk ~/.config/chadwm/chadwm/config.mk
mv ~/dFiles/src/chad.defh ~/.config/chadwm/chadwm/config.def.h
mv ~/dFiles/src/st.mk ~/usr/local/Suckless/st/config.mk

# init config
sudo 66boot-initial-setup
sudo 66boot-storage-autoconf
sudo 66boot-rcdotconf 
sudo 66-enable -t boot -F boot@system
sudo 66-enable connmand
sudo xbps-install -Sy 66-void base-system-66

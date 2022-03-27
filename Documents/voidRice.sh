#!/bin/sh

sudo xbps-install xdg-user-dirs
xdg-user-dirs-update

cd ~/.config
git clone https://github.com/x7429/dotfiles
cd dotfiles

# xbps-install base-devel libX11-devel

# sudo xbps-install neovim xclip
# [neovim]

sudo xbps-install alacritty terminus-font
cp -r .config/alacritty ~/.config

# sudo xbps-install libXinerama-devel libXft-devel
# [dwm + dmenu]

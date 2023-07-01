#!/bin/bash
#
# Load required software
sudo apt install curl wget unzip zsh

# Get the latest neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --version

# get the Nerd fonts
mkdir FireCode
wget -O ./FiraCode/FiraCode.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip
unzip FiraCode/FiraCode.zip
mkdir ~/.fonts
mv FiraCode/*.ttf ~/.fonts
rm -r FireCode

# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

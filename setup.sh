#!/bin/bash
#
# Load required software
sudo apt install curl wget unzip zsh stow

# Set up nvim
stow nvim

# Install neovim
# # Get the latest neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod +x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim
nvim --version

# get the Nerd fonts
mkdir FiraCode
wget -O ./FiraCode/FiraCode.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip
unzip -d FiraCode FiraCode/FiraCode.zip
sudo mv FiraCode/*.ttf /usr/local/share/fonts/
sudo fc-cache -fv
rm -r FiraCode

# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install powerlevel10k
(cd ~ ; git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k)
echo "\niChange ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc\n\n"


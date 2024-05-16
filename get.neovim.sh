#!/bin/bash

cd ~
wget https://github.com/neovim/neovim/releases/download/v0.10.0/nvim.appimage
chmod +x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim


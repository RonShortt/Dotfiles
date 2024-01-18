#!/bin/bash

cd ~
wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim.appimage
chmod +x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim


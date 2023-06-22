#!/bin/bash

cd ~/
sudo apt-get install -y ninja-build gettext cmake unzip curl python3-neovim
git clone https://github.com/neovim/neovim

cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

cd ~/
mv neovim trash

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

#!/bin/bash

git clone https://github.com/mkober/dotfiles ~/repos/dotfiles

ln -s ~/repos/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/repos/dotfiles/.fonts ~/.fonts
ln -s ~/repos/dotfiles/.bash_aliases ~/.bash_aliases

rm -rf ~/.config/doom
ln -s ~/repos/dotfiles/.config/doom ~/.config/doom
ln -s ~/repos/dotfiles/.config/nvim ~/.config/nvim

ln -s ~/repos/dotfiles/.themes ~/.themes

fc-cache -f -v

~/.config/emacs/bin/doom sync

#!/bin/bash

git clone https://github.com/mkober/dotfiles ~/Repos/dotfiles

ln -s ~/Repos/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/Repos/dotfiles/.fonts ~/.fonts
ln -s ~/Repos/dotfiles/.bash_aliases ~/.bash_aliases

rm -rf ~/.config/doom
ln -s ~/Repos/dotfiles/.config/doom ~/.config/doom
ln -s ~/Repos/dotfiles/.config/nvim ~/.config/nvim

ln -s ~/Repos/dotfiles/.themes ~/.themes

fc-cache -f -v

~/.config/emacs/bin/doom sync

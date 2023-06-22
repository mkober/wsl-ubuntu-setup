#!/bin/bash

sudo apt install -y build-essential libgtk-3-dev libgnutls28-dev libtiff5-dev libgif-dev libjpeg-dev libpng-dev libxpm-dev libncurses-dev texinfo autoconf ninja-build gettext cmake unzip curl fd-find ripgrep

cd ~/
git clone git://git.sv.gnu.org/emacs.git

cd emacs
./autogen.sh
./configure --with-pgtk
make -j8
sudo make install

cd ~/
mv emacs trash

cd ~/
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install

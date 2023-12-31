#!/bin/bash

sudo apt install -y build-essential libgtk-3-dev libgnutls28-dev libtiff5-dev libgif-dev libjpeg-dev libpng-dev libxpm-dev libncurses-dev texinfo autoconf ninja-build gettext cmake unzip curl fd-find ripgrep

cd ~/
wget https://git.savannah.gnu.org/cgit/emacs.git/snapshot/emacs-29.0.92.tar.gz
tar -xf emacs-29.0.92.tar.gz
cd emacs-29.0.92
./autogen.sh
./configure --with-pgtk
make -j8
sudo make install

cd ~/
mv emacs-29.0.92 trash
mv emacs-29.0.92.tar.gz trash

cd ~/
rm -rf ~/.config/emacs
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install

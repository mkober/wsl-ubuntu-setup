#!/bin/bash

sudo add-apt-repository --yes --update ppa:ansible/ansible

sudo apt update

sudo apt install -y ntpdate ansible libfuse2 vim tmux gnome-tweaks build-essential libgtk-3-dev libgnutls28-dev libtiff5-dev libgif-dev libjpeg-dev libpng-dev libxpm-dev libncurses-dev texinfo autoconf ninja-build gettext cmake unzip curl fd-find ripgrep ninja-build gettext cmake unzip curl

mkdir ~/Repos
mkdir ~/Trash
mkdir ~/Temp

./git.sh
./node.sh
./tmux.sh
./neovim.sh
./doomemacs.sh
./aws.sh
./docker.sh
./python.sh
./dotfiles.sh
./java.sh
./ansible.sh
./terraform.sh
./kubernetes.sh

sudo apt autoremove


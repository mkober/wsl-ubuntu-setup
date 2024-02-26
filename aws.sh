#!/bin/bash

sudo apt install libnss3-dev libgdk-pixbuf2.0-dev libgtk-3-dev libxss-dev

cd ~
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

mv awscliv2.zip Trash
mv aws Trash

wget https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip
unzip aws-sam-cli-linux-x86_64.zip -d aws-sam
sudo ./aws-sam/install

mv aws-sam-cli-linux-x86_64.zip Trash
mv aws-sam Trash

cd ~
wget https://dy9cqqaswpltd.cloudfront.net/workbenchDDBLocal-linux.run
sudo ./workbenchDDBLocal-linux.run
mv workbenchDDBLocal-linux.run Trash

cd ~
curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb"
sudo dpkg -i session-manager-plugin.deb

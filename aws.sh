#!/bin/bash

sudo apt install libnss3-dev libgdk-pixbuf2.0-dev libgtk-3-dev libxss-dev

cd ~
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

mv awscliv2.zip trash
mv aws trash

wget https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip
unzip aws-sam-cli-linux-x86_64.zip -d aws-sam
sudo ./aws-sam/install

mv aws-sam-cli-linux-x86_64.zip trash
mv aws-sam trash

cd ~
wget https://dy9cqqaswpltd.cloudfront.net/workbenchDDBLocal-linux.run
sudo ./workbenchDDBLocal-linux.run
mv workbenchDDBLocal-linux.run trash

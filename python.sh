#!/bin/bash
#
sudo apt update

sudo apt install python3-pip python3-neovim python3-venv python3-pip python3-poetry -y
pip install pytest neovim poetry aws-cdk-lib constructs python-dotenv --break-system-packages

#!/bin/bash

# Update the package lists for upgrades and new package installations
sudo apt-get update

# Upgrade all the installed packages
sudo apt-get upgrade -y


sudo apt-get install code
code --install-extension ms-toolsai.jupyter
code --install-extension ms-python.vscode-pylance
code --install-extension ms-python.python
code --install-extension ms-python.debugpy
python3 -m venv /home/nokaido/workspace/camenv
source /home/nokaido/workspace/camenv/bin/activate
pip3 install opencv-python
sudo apt install -y python3-picamera2
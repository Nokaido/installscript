#!/bin/bash

# Update the package lists for upgrades and new package installations
sudo apt-get update

# Upgrade all the installed packages
sudo apt-get upgrade -y

sudo apt install curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y
sudo apt-get install code
code --install-extension ms-toolsai.jupyter
code --install-extension ms-python.vscode-pylance
code --install-extension ms-python.pytho

code --install-extension ms-python.debugpy
python3 -m venv /home/nokaido/workspace/camenv
source /home/nokaido/workspace/camenv/bin/activate
pip3 install opencv-python
sudo apt install -y python3-picamera2
cd /home/nokaido/Downloads/
wget https://datasheets.raspberrypi.com/camera/picamera2-manual.pdf

#!/bin/bash

# Update and upgrade system
sudo apt update -y
sudo apt upgrade -y

# Install necessary tools
sudo apt install -y gdebi-core wget curl gnupg2 ca-certificates lsb-release apt-transport-https

# Install Brave Browser
wget -O brave.deb https://brave-browser-apt-release.s3.brave.com/brave-core.asc
sudo gdebi -n brave.deb

# Install Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install -y sublime-text

# Install VirtualBox
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
sudo apt update
sudo apt install -y virtualbox-6.1

# Install other tools
sudo apt install -y bleachbit chromium-browser signal-desktop

# Install Genymotion
wget -O genymotion.deb https://dl.genymotion.com/releases/genymotion-3.2.1/genymotion-3.2.1-linux_x64.bin
sudo gdebi -n genymotion.deb

# Install Mailspring
wget -O mailspring.deb https://updates.getmailspring.com/download?platform=linuxDeb
sudo gdebi -n mailspring.deb

# Install Ulauncher
wget -O ulauncher.deb https://github.com/Ulauncher/Ulauncher/releases/download/5.14.1/ulauncher_5.14.1_all.deb
sudo gdebi -n ulauncher.deb

# Install Google Chrome
wget -O google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi -n google-chrome.deb

# Install Microsoft Edge
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/microsoft-edge.list
sudo apt update
sudo apt install -y microsoft-edge-dev

# Install Discord
wget -O discord.deb https://discord.com/api/download?platform=linux&format=deb
sudo gdebi -n discord.deb

# Install Slack
wget -O slack.deb https://downloads.slack-edge.com/linux_releases/slack-desktop-4.24.0-amd64.deb
sudo gdebi -n slack.deb

# Install VMware Horizon Client
wget -O vmware-horizon.deb https://download3.vmware.com/software/view/viewclients/CART22FQ1/VMware-Horizon-Client-2106-8.

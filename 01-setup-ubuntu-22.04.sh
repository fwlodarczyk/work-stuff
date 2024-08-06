#!/bin/bash
sudo apt update
sudo apt full-upgrade -y
sudo snap refresh
sudo apt install linux-azure -y
sudo apt autopurge -y
sudo apt install git curl htop iperf3 cloud-guest-utils -y
curl -s https://gist.githubusercontent.com/ikr4-m/67023682f949c2c22b0e51d0acb68b05/raw/506a888299e3e6e726a240e44d07d5d4bc900e87/install.sh | sudo bash
curl -fsSL https://get.docker.com | sudo bash
curl -s https://install.husarnet.com/install.sh | sudo bash
su $SUDO_USER
sudo usermod -aG docker $USER
exit
sudo poweroff

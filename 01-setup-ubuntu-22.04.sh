#!/bin/bash
sudo apt update
sudo apt full-upgrade -y
sudo snap refresh -y
sudo apt install linux-azure -y
sudo apt autopurge -y

#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
sudo apt install software-properties-common -y
sudo add-apt-repository universe -y
sudo apt update && sudo apt install curl -y
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
sudo apt update && sudo apt full-upgrade -y && sudo snap refresh
sudo apt install ros-jazzy-desktop -y
sudo apt install ros-jazzy-rmw-cyclonedds-cpp -y
su $SUDO_USER
echo "source /opt/ros/jazzy/setup.bash" >> ~/.bashrc
exit
exit

#!/bin/bash
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y
sudo apt update
sudo apt install docker.io -y
sudo apt install docker-ce -y
docker --version
docker compose version
sudo usermod -aG docker $USER
echo "if you see versions of docker and docker compose, then they were successfully installed"
echo "it it recommended to reboot your system in case you are not root"

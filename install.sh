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
echo "if you see versions of docker and docker compose, then they were successfully installed"
echo -n "please, execute the command below:\n"
echo -n "usermod -aG docker (your username)\n"
echo "after that better restart your system"


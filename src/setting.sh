#!/usr/bin/bash

#setting basic environment
echo "==> setting basic environment"
echo "=====> setting basic environment"
sudo passwd vagrant
echo 'export PS1="[\h@\u] \[\e[32m\]\w\[\e[m\]\n\\$ \[\e[36m\]＞\[\e[m\]  "' >> ~/.profile
echo 'export LSCOLORS=gxbxxxxxfxxxxxxxxxcxcx' >> ~/.profile
echo 'export LS_COLORS="di=36:ln=31:so=0:pi=0:ex=35:bd=0:cd=0:su=0:sg=0:tw=32:ow=32"' >> ~/.profile
~/.profile
. ~/.profile
sudo timedatectl set-timezone Asia/Tokyo
#installing ubuntu packages
echo -e "\n==> installing ubuntu packages\n"
echo -e "\n=====> updating and upgrading ubuntu packages\n"
sudo apt update
sudo apt -y upgrade
echo -e "\n=====> installing the other ubuntu packages\n"
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common wget git build-essential
sudo apt clean
sudo rm -rf /var/lib/apt/lists/*
#installing Docker and docker-compose
echo -e "\n==> installing Docker and docker-compose\n"
echo -e "\n=====> download Docker package\n"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
echo -e "\n=====> installing Docker\n"
sudo apt install -y docker-ce
echo -e "\n=====> installing docker-compose\n"
sudo apt -y install docker-compose
sudo usermod -aG docker vagrant
#installing node.js@v10
echo -e "\n==> installing node.js@v10"
echo -e "\n=====> installing node.js@v10\n"
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt install -y nodejs
#installing Golang@v1.13
wget https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.13.5.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
echo -e "\n==> exit and relogin !!"
#! /bin/bash

# vagrant up 속도 향샹을 위해 주석 처리
sudo apt-get update
sudo apt-get upgrade -y

# docker init

#sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common 
#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#sudo apt-get update
#
#sudo apt-get install -y docker-ce docker-ce-cli containerd.io 
# k3s init
export INSTALL_K3S_EXEC="agent --server https://192.168.56.110:6443 --token-file /vagrant/node-token --node-ip 192.168.56.111"
curl -sfL https://get.k3s.io | sh - 

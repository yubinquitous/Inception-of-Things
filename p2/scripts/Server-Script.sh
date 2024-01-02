#! /bin/bash

# vagrant up 속도 향샹을 위해 주석 처리
sudo apt-get update
sudo apt-get upgrade -y 

# docker init

#sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y 
#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#sudo apt-get update
#
#sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# k3s init
#sudo apt-get install cgroup-bin
export INSTALL_K3S_EXEC="--write-kubeconfig-mode=644 --tls-san $(hostname) --node-ip 192.168.56.110 --bind-address 192.168.56.110  --advertise-address 192.168.56.110"
curl -sfL https://get.k3s.io | sh -
sudo chmod 644 /etc/rancher/k3s/k3s.yaml
sudo cp /var/lib/rancher/k3s/server/node-token /vagrant/

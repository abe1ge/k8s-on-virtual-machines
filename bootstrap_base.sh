#!/usr/bin/env bash

#Updating Vm
sudo apt-get update

#Install open SSH
sudo apt-get -y install openssh-server openssh-client facter lolcat

#Disable Firewall
sudo ufw disable

sudo apt-get install -y docker.io 

sudo su -

#get Google Cloud Apt Key 
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

#Ensure Kubernetes Repository
echo deb http://apt.kubernetes.io/ kubernetes-xenial main  >> /etc/apt/sources.list.d/kubernetes.list

apt-get update

#kubernetes installation
apt-get install -y kubelet kubeadm kubectl kubernetes-cni






#!/usr/bin/env bash

#Updating Vm
sudo apt-get update

#Install open SSH
sudo apt-get -y install openssh-server openssh-client facter

#Disable Firewall
sudo ufw disable

echo "vagrant\nvagrant" | passwd ubuntu

sudo apt-get install -y docker.io 

sudo su -

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

echo deb http://apt.kubernetes.io/ kubernetes-xenial main  >> /etc/apt/sources.list.d/kubernetes.list

apt-get update

apt-get install -y kubelet kubeadm kubectl kubernetes-cni


#Getting master fqdn and ip
mfqdn=`facter fqdn`
mip=`facter ipaddress_eth1`

































# #Install open SSH
# sudo apt-get -y install openssh-server openssh-client 

# #Disable Firewall
# sudo ufw disable

# #Install Puppet
# sudo cp /tmp/shared/puppet-enterprise-2015.2.0-ubuntu-14.04-amd64.tar.gz /opt
# cd /opt
# sudo tar -zxvf /opt/puppet-enterprise-2015.2.0-ubuntu-14.04-amd64.tar.gz
# sudo cp /tmp/shared/answers.install /opt/puppet-enterprise-2015.2.0-ubuntu-14.04-amd64/answers
# sudo wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
# sudo dpkg -i puppetlabs-release-trusty.deb
# sudo apt-get update

# sudo /opt/puppet-enterprise-2015.2.0-ubuntu-14.04-amd64/puppet-enterprise-installer -A /opt/puppet-enterprise-2015.2.0-ubuntu-14.04-amd64/answers/answers.install


# #Forcing an ip to account for network weirdness
# sudo ifdown eth1
# sudo ifup eth1
# sudo ifconfig eth1 192.168.1.124

# echo "Forced ip to account for the network being weird"

# #Getting master fqdn and ip
# mfqdn=`facter fqdn`
# mip=`facter ipaddress_eth1`

# # Check if mip or mfqdn files exist and deleting them if they do (this is mainly for testing runs)
# if [ -e /tmp/shared/mfqdn.file ]
# then
	# sudo rm /tmp/shared/mfqdn.file
# fi

# if [ -e /tmp/shared/mip.file ]
# then
	# sudo rm /tmp/shared/mip.file
# fi

# #Saving the ip and fqdn of the master
# echo 'mfqdn="'"$mfqdn"'"' >> /tmp/shared/mfqdn.file
# echo 'mip="'"$mip"'"' >> /tmp/shared/mip.file

# echo "The master ip is $mip and its' FQDN is $mfqdn"

# #Updating the hosts file
# sed -i "1i127.0.0.1	$mfqdn	puppetmaster" /etc/hosts
# sed -i "2i$mip	$mfqdn	puppetmaster" /etc/hosts

# echo "Hosts file updated"

# #Creating Site.pp
# sudo touch /etc/puppetlabs/code/environments/production/manifests/site.pp

# sudo cp -r /tmp/shared/git /etc/puppetlabs/code/environments/production/modules


# echo "Modules Copied"

# sudo echo "node 'abelAgent2.qac.local' {" >> /etc/puppetlabs/code/environments/production/manifests/site.pp
# sudo echo "include git" >> /etc/puppetlabs/code/environments/production/manifests/site.pp

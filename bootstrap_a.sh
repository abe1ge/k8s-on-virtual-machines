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






























# sudo apt-get install -y puppet

# #Install Puppet
# sudo apt-get install -y puppet

# echo "Puppet installed"

# #mfqdn="jeevesmaster.qac.local"
# #mip="192.168.1.80"


# if [ -e /tmp/shared/mfqdn.file ]
# then
	# . /tmp/shared/mfqdn.file
# else
	# mfqdn="jeevesmasterent.qac.local"
# fi

# if [ -e /tmp/shared/mip.file ]
# then
	# . /tmp/shared/mip.file
# else
	# mip="192.168.1.96"
# fi


# #Getting the ip and fqdn from of the master from the file the master 
# #bootstrap saved and saving them as $mip and $mfqdn respectively
# #. /tmp/shared/mfqdn.file
# #. /tmp/shared/mip.file

# echo "The master ip is $mip and its' FQDN is $mfqdn"

# #Updating hosts file
# fqdn=`facter fqdn`
# ip=`facter ipaddress`

# sed -i "1i$mip	$mfqdn	puppetmaster" /etc/hosts
# sed -i "2i127.0.0.1	$fqdn	puppet" /etc/hosts
# sed -i "3i$ip	$fqdn	puppet" /etc/hosts

# sed -i "2iserver=$mfqdn" /etc/puppet/puppet.conf

# echo "Hosts file updated"

# #Retuning time taken to this point
# duration1=$SECONDS
# echo "$(($duration1 / 60)) minute(s) and $(($duration1 % 60)) second(s) elapsed."

# sudo apt-get install curl -y

# sudo wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb

# sudo dpkg -i puppetlabs-release-trusty.deb

# sudo apt-get update

# curl -k https://jeevesmasterent.qac.local:8140/packages/current/install.bash | sudo bash

# sudo puppet agent --enable

# #SSH into master to approve puppet certificate
# sshpass -p "vagrant" ssh -o StrictHostKeyChecking=no vagrant@"$mip" << EOF
# sudo puppet cert list
# sudo puppet cert sign --all
# exit 0
# EOF

# echo " Puppet certificate signed"

# #Restarting puppet service
# #sudo service puppet stop
# #sudo service puppet start

# #echo "Puppet service restarted"

# #Pause to allow puppet service to restart fully
# #sleep 3

# #Enable puppet agent
# #sudo puppet agent --enable

# #echo "Puppet agent enabled"

# #Contacting puppet master and provisioning the modules
# sudo puppet agent --test --server="$mfqdn"

# echo "Puppet agent has linked to master server and applied the puppet modules"

# #Returning the total time to provision the box
# duration2=$SECONDS
# echo "$(($duration2 / 60)) minute(s) and $(($duration2 % 60)) second(s) elapsed."
<<<<<<< HEAD
# -*- mode: ruby -*-
# # vi: set ft=ruby :

Vagrant.configure(2) do |config|

	#setting up the synced shared folder
	config.vm.synced_folder "shared", "/tmp/shared"

	(1..2).each do |i|
		config.vm.define "agent#{i}" do |agent|
		
			# Selecting the box to use
			agent.vm.box = "ubuntu/xenial64"
			
			# Setting up the network options
			#agent.vm.network "public_network", bridge: "Intel(R) Ethernet Connection I217-LM"
			
			#calling the provision bash file
			if i == 1
				agent.vm.provision:shell,path:"bootstrap_m.sh"
				agent.vm.hostname = "abelmaster.qac.local"
				agent.vm.network "public_network", :public_network=> "wlan0",ip:"192.168.1.24"
			else 
				agent.vm.provision:shell,path:"bootstrap_a.sh"
				agent.vm.hostname = "agent#{i}.qac.local"
				#master.vm.network "public_network", :public_network=> "wlan0",ip:"192.168.1.25"
			end
			
			agent.vm.network "private_network", ip: "172.42.42.#{i}", netmask: "255.255.255.0",
			auto_config: true,
			virtualbox__intnet: "k8s-net"
			
			#configuring vm provider options
			agent.vm.provider "virtualbox" do |agentVM|
			agentVM.gui = false
			agentVM.name="pupetagent#{i}"
				
			#Setting the amount of RAM the VM has access to
			if i == 1
				agentVM.memory ="2048"
			else 
				agentVM.memory ="4096"
			end
			
			agentVM.cpus ="2"
			end
	    end
	end
	
		if Vagrant.has_plugin?("vagrant-cachier")
		config.cache.scope = :box
  end
=======
# -*- mode: ruby -*-
# # vi: set ft=ruby :

Vagrant.configure(2) do |config|

	#setting up the synced shared folder
	config.vm.synced_folder "shared", "/tmp/shared"

	(1..2).each do |i|
		config.vm.define "agent#{i}" do |agent|
		
			# Selecting the box to use
			agent.vm.box = "ubuntu/xenial64"
			
			# Setting up the network options
			#agent.vm.network "public_network", bridge: "Intel(R) Ethernet Connection I217-LM"
			
			#calling the provision bash file
			if i == 1
				agent.vm.provision:shell,path:"bootstrap_m.sh"
				agent.vm.hostname = "abelmaster.qac.local"
				agent.vm.network "public_network", :public_network=> "wlan0",ip:"192.168.1.24"
			else 
				agent.vm.provision:shell,path:"bootstrap_a.sh"
				agent.vm.hostname = "agent#{i}.qac.local"
				#master.vm.network "public_network", :public_network=> "wlan0",ip:"192.168.1.25"
			end
			
			agent.vm.network "private_network", ip: "172.42.42.#{i}", netmask: "255.255.255.0",
			auto_config: true,
			virtualbox__intnet: "k8s-net"
			
			#configuring vm provider options
			agent.vm.provider "virtualbox" do |agentVM|
			agentVM.gui = false
			agentVM.name="pupetagent#{i}"
				
			#Setting the amount of RAM the VM has access to
			if i == 1
				agentVM.memory ="2048"
			else 
				agentVM.memory ="4096"
			end
			
			agentVM.cpus ="2"
			end
	    end
	end
	
		if Vagrant.has_plugin?("vagrant-cachier")
		config.cache.scope = :box
  end
>>>>>>> e1bf522fd95abbadb577f53d26fc273ad8c6a718
end
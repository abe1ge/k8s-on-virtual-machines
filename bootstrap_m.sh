#!/usr/bin/env bash






# sudo su -

# apt-get install -y jq

# jq \
	 # '.spec.containers[0].command |= .+ [\"--advertise-address=172.42.42.1\"]' \
	 # /etc/kubernetes/manifests/kube-apiserver.json > /tmp/kube-apiserver.json 
	 
# mv /tmp/kube-apiserver.json /etc/kubernetes/manifests/kube-apiserver.json

# kubectl -n kube-system get ds -l 'component=kube-proxy-amd64' -o json \
	# | jq '.items[0].spec.template.spec.containers[0].command |= .+ [\"--proxy-mode=userspace\"]' \
	# | kubectl apply -f - && kubectl -n kube-system delete pods -l 'component=kube-proxy-amd64'


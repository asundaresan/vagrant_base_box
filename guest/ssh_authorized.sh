#!/usr/bin/bash 
# install vagrant public key 
mkdir -p /home/vagrant/.ssh
wget --no-check-certificate https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub -O /home/vagrant/.ssh/authorized_keys
chmod go-rwx -R /home/vagrant/.ssh


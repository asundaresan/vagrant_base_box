#!/bin/bash 

sudo sh -c 'echo "vagrant ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/vagrant'
sudo chown -R root:root /etc/sudoers.d/
sudo chmod 0440 /etc/sudoers.d/*


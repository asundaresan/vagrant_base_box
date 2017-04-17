#!/bin/bash 
sudo apt-get update 
sudo apt-get install -y openssh-server build-essential linux-headers-generic 
sudo apt-get upgrade -y
sudo apt-get install -y dkms virtualbox-guest-dkms

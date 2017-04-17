#!/usr/bin/bash 

if [[ $1 == "" ]]; then 
  echo "Usage: make_box.sh <name>"
else 
  name=${1}
  package_name="package_${name}.box"
  echo "Removing (existing) base box with name: ${name}"
  rm -f package_${name}.box
  vagrant box remove ${name}
  echo "Creating base box with name: ${package_name}"
  vagrant package --base ${name} --output ${package_name}
  echo "Adding base box with name: ${name}"
  vagrant box add ${name} ${package_name}
fi


#!/bin/bash 
name=xenial32
package=package_${name}.box
vagrant box remove ${name}
vagrant package --output ${package}
vagrant box add ${name} ${package}

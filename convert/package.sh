#!/bin/bash 
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
name=`basename ${DIR}`
package=package_${name}.box
echo vagrant box remove ${name}
vagrant box remove ${name}
echo vagrant package --output ${package}
vagrant package --output ${package}
echo vagrant box add ${name} ${package}
vagrant box add ${name} ${package}

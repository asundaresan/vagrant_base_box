Create vagrant base box for Ubuntu 
==================================

This project explains how to create a Vagrant base box for Ubuntu.

There are two steps.

* Create a Virtualbox VM.
* Configure the VM as you like. 
* Create a Vagrant base box from the Virtualbox VM.

Create a new VM
---------------
Download a suitable ISO image from the Ubuntu release page. E.g. http://releases.ubuntu.com/16.04/

* Name box (xenial32)
* Set memory to 1024MB
* Create a virtual hard disk now
  * Select VMDK
  * Dynamically allocated
  * Select 12GB 

Make sure the first network interface (adapter 1) is a NAT adapter.

Configure the VM
----------------

Boot up new VM
~~~~~~~~~~~~~~

* Install various packages. ::
    
    source guest/package.sh
    source guest/ros.sh

* Add the vagrant user to sudoers file. ::

    source guest/sudoer.sh

* Create SSH key. ::

    source ssh_authorized.sh

* Edit /etc/ssh/sshd_config. Ensure the following are set. (These should be the default anyway.)::

    Port 22
    PubkeyAuthentication yes
    AuthorizedKeysFile %h/.ssh/authorized_keys
    PermitEmptyPasswords no
    
* Change default editor (optional). ::

    source guest/editor.sh

Restart VM
~~~~~~~~~~

Power off the VM and restart. ::

  sudo shutdown -h now 

Create Base Box 
---------------

You can create and add the vagrant base box using the following ccommand, ::

  source host/make_box.sh <name>

where ``<name>`` is both the name of the Virtualbox VM as well as the Vagrant box name. E.g. ::

  source host/make_box.sh xenial64


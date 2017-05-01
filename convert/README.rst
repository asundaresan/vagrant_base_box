Creating a base box
===================

This section explores how to customize an existing base box and create a new base box out of it. 

::
    
  vagrant up --no-provision 
  vagrant provision 
  vagrant halt 

Then package it. ::

  vagrant package --output xenial64.box
  vagrant box add "xenial64" xenial64.box


# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  #base de la maquina virtual
  config.vm.box = "ubuntu/trusty64"
  #modidficaciones desde el provider (en este caso virtual box)---------
  config.vm.provider :virtualbox do |vb|
	vb.customize [ 'modifyvm', :id, '--name', 'practica' ]
  end
  #compartir folder-----------------------------------------------------
  config.vm.synced_folder ".", "/tmp"
  
  #compartir puerto-ejemplo el 80 de la maquina virtual al 8080 del host
  config.vm.network "forwarded_port", guest: 80, host: 8080
  
  #aprovisionar con script----------------------------------------------
  config.vm.provision "shell", path: "script.sh"



end

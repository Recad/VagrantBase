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
	vb.customize [ 'modifyvm', :id, '--name', 'SERVIDOR-NFS' ]
  end
  #compartir folder-----------------------------------------------------
  #config.vm.synced_folder ".", "/home"
  
  #compartir puerto-ejemplo el 80 de la maquina virtual al 8080 del host
  #config.vm.network "forwarded_port", guest: 80, host: 8085
  
  
  ##Bridge para la vm 
  #config.vm.network "public_network", :bridge => "eth0", ip: "xxx.yyy.zzz.153", :netmask => "255.255.255.128", auto_config: false
  config.vm.network :public_network, :bridge => "en0: Ethernet"
  
  
  #aprovisionar con script----------------------------------------------
  config.vm.provision "shell", path: "script.sh"
  #aprovisionar con vagrant para docker---------------------------------
  #config.vm.provision "docker" do |d|
  #  d.pull_images "postgres"
  #  d.run "postgres",
  #  args: "-v '/home:/var/lib/postgresql/data' -p '5432:5432' -e 'POSTGRES_PASSWORD=docker' -d"
    
  #end


end

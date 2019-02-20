
#!/usr/bin/env bash
sudo apt-get update
##Activar user namespaces-----------------------------------------------
#sudo sysctl -w kernel.unprivileged_userns_clone=1

##docker manual---------------------------------------------------------
#yes | sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#sudo add-apt-repository \
#   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) \
#   stable"
#sudo apt-get update
#yes | sudo apt-get install docker-ce=17.06.0~ce-0~ubuntu docker-ce-cli=17.06.0~ce-0~ubuntu containerd.io
#sudo sudo apt-get install docker-ce docker-ce-cli containerd.io --fix-missing

#sudo docker pull imagen manual
#sudo docker pull postgres

#sudo docker run -d -p 5432:5432 -v /home:/var/lib/postgresql/data postgres
##Se cierra configuracion para docker--------------------------------------------------------------------------------

##apache------------------------------------------------------------------------------------------------
#sudo apt-get -y install apache2 --fix-missing
#sudo apt-get -y install apache2 --fix-missing

##htop-------------------------------------------------------------------------------------------------
#sudo apt-get -y install htop --fix-missing
#sudo apt-get -y install htop --fix-missing

##nano-------------------------------------------------------------------------------------------------
#sudo apt-get -y install nano --fix-missing
#sudo apt-get -y install nano --fix-missing

##CONFIGURACION PARA CLUSTES Y NFS-------------------------------------------------------------------

##PARA SERVER!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
sudo apt-get update
yes | sudo apt-get install nfs-kernel-server
##PARA CLIENT!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#sudo apt-get update
#sudo apt-get install nfs-common
#crear carpeta y ver sus usuarios y permisos
#sudo mkdir /home/nfs/general -p
#ls -la /var/nfs/general  #Esto no es necesario pero ayuda 
#configurando usuario y grupo para la carpeta
#sudo chown nobody:nogroup /home/nfs/general

##Archivo de config

echo "

# Compartir la carpeta home del servidor
# en modo lectura y escritura y accesible desde la red 192.168.0.0/24
/home 192.168.0.0/255.255.255.0(rw)

# Compartir carpeta tmp a todos como 'solo-lectura'
/tmp *(ro)

# Compartir carpeta /var/log a un PC como 'solo-lectura'
/var/log 192.168.0.211(ro) 
" >> /etc/exports
 
#sudo /etc/init.d/portmap start
sudo service portmap start

##INSTALAR MPI
yes | sudo apt-get install libcr-dev mpich2 mpich2-doc

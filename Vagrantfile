Vagrant.configure("2") do |config|

  #Configurações globais
  config.vm.box_check_update = true 

  #Configurações Server 01
  config.vm.define "NathanaelClientH" do |webserver| 
    webserver.vm.box = "ubuntu/trusty64" 
    webserver.vm.hostname = "NathanaelClientH" 
    webserver.vm.box_download_insecure=true  
    webserver.vm.network "private_network", type: "static", ip: "192.168.50.101"  
    webserver.vm.provider "virtualbox" do |vb| 
        vb.memory = 1024 
        vb.cpus = 2
    end
    webserver.vm.provision "shell", path: "instalar_pacotes1.sh"
     
  end

 # Configurações Server 02
  config.vm.define "NathanaelServidor" do |docker| 
    docker.vm.box = "centos/7" 
    docker.vm.hostname = "NathanaelServidor"
    docker.vm.box_download_insecure=true  
   docker.vm.network "private_network", type: "static", ip: "192.168.50.102"
    docker.vm.provider "virtualbox" do |vb| 
        vb.memory = 1024
        vb.cpus = 2
    end
    docker.vm.provision "shell", path: "instalar_pacotes2.sh"    
  end
end
Vagrant.configure("2") do |config|
  config.vm.define "vm1" do |vm1|
    vm1.vm.box = "ubuntu/focal64"
    vm1.vm.provider "virtualbox" do |vb|
      vb.memory = 2048
     vb.cpus = 2
    end
  vm1.vm.network "private_network", ip: "192.168.50.10", auto_config: false, virtualbox__intnet: "eth0"

  vm1.vm.synced_folder "/home/gabriel_victor/projeto_vagrant/Criando-vm-via-Vagrant/sync_folder", "/var/www/html"

  vm1.vm.network "forwarded_port", guest: 80, host: 8081

  vm1.vm.provision "shell", inline: <<-SHELL
    sudo apt update
    sudo apt upgrade
    sudo apt install -y apache2
  SHELL
  end

  config.vm.define "vm2" do |vm2|
    vm2.vm.box = "ubuntu/focal64"
    vm2.vm.provider "virtualbox" do |vb|
      vb.memory = 2048
      vb.cpus = 2
    end
    vm2.vm.network "private_network" , ip: "192.168.50.11",auto_config: false, virtualbox__intnet: "eth0"
    vm2.vm.synced_folder "/home/gabriel_victor/projeto_vagrant/Criando-vm-via-Vagrant/sync_folder", "/var/www/html"
    vm2.vm.network "forwarded_port", guest:80, host: 8082
    vm2.vm.provision "shell", inline: <<-SHELL
      sudo apt update
      sudo apt upgrade
      sudo apt install -y mysql -server
    SHELL
  end
end
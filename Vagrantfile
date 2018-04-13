ENV["LC_ALL"] = "en_US.UTF-8"
Vagrant.configure("2") do |config|
  
  config.vm.box = "ubuntu-nodejs"
  config.vm.hostname = "ethereum-dev"
  config.vm.network "private_network", type: "dhcp"
  config.vm.provision :shell, path: "bootstrap.sh" 
  config.vm.network "forwarded_port", guest: 8545, host: 8545, protocol: "tcp"  
  config.vm.network "forwarded_port", guest: 4200, host: 4200, protocol: "tcp"

end

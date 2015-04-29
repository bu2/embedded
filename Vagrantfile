# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 4 # 4 core HT
    vb.memory = 12288 # 12Go
  end

  config.vm.network "private_network", ip: "192.168.80.10"

  config.vm.provision :file, source: 'bootstrap_tools.sh', destination: '/home/vagrant/.bootstrap_tools.sh'
  config.vm.provision :shell, path: 'bootstrap_host.sh'

end

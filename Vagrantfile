# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 2
    vb.memory = 8192
  end

  config.vm.network "private_network", ip: "192.168.80.10"

  config.vm.provision :file, source: 'bootstrap_tools.sh', destination: '/home/vagrant/.bootstrap_tools.sh'
  config.vm.provision :shell, path: 'bootstrap_host.sh'

end

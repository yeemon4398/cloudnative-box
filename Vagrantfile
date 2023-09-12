# -*- mode: ruby -*- 
# vi: set ft=ruby : 


Vagrant.configure( "2" ) do |config|

  config.vm.define "cloudnative-box" do |vm1|
    config.ssh.private_key_path = "/home/yeemon/Workspaces/cloudnative-box/.ssh/id_rsa"      # Path to your private key file location
    config.ssh.forward_agent = true
    config.ssh.username = "vagrant"
    config.ssh.password = "vagrant"
    vm1.vm.hostname = "cloudnative-box"
    vm1.vm.box = "bento/ubuntu-22.04"
    vm1.vm.network "private_network", ip: "192.168.56.3", :name => 'vboxnet0'
    vm1.vm.synced_folder ".", "/home/vagrant/"
    vm1.vm.provider "virtualbox" do |vb|
      vb.name = "cloudnative-box"
      vb.memory = "8192"
      vb.cpus = 4
      vb.gui = false
    end

vm1.vm.provision "shell", run: "always", inline: <<-SHELL
  sudo apt-get update -y
  sudo apt-get install net-tools zip curl jq tree unzip wget siege apt-transport-https ca-certificates software-properties-common -y
  netstat -tunlp
  echo "Hello from cloudnative-box"
SHELL

    vm1.vm.provision "shell",
      privileged: true,
      path: './scripts/docker-install.sh'

    vm1.vm.provision "shell",
      privileged: true,
      path: './scripts/kubectl-install.sh'

    vm1.vm.provision "shell",
      privileged: true,
      path: './scripts/kind-install.sh'

    vm1.vm.provision "shell",
      privileged: true,
      path: './scripts/helm-install.sh'
  end
end

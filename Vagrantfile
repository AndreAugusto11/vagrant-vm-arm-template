# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "so" do |mgdock|
    mgdock.vm.hostname = "so"
    mgdock.vm.network :private_network, ip: "192.168.56.30", netmask: "24"

    mgdock.vm.provider :docker do |docker, override|
      override.vm.box = nil
      docker.image = "rofrano/vagrant-provider:ubuntu"
      docker.remains_running = true
      docker.has_ssh = true
      docker.privileged = true
      docker.volumes = ["/sys/fs/cgroup:/sys/fs/cgroup:rw"]
      docker.create_args = ["--cgroupns=host"]
      # Uncomment to force arm64 for testing images on Intel
      # docker.create_args = ["--platform=linux/arm64"]     
    end

    mgdock.vm.shared_folder "shared_folder/", "/home/vagrant/shared_folder", docker_consistency: 
"cached"
    # Provisioning
    mgdock.vm.provision "shell", inline: 'sudo apt-get -y update; sudo apt-get -y install sl'
    mgdock.vm.provision :shell, path: "bootstrap-mgmt-docker.sh"
  end
end

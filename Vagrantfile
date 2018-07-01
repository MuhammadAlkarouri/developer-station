# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "fedora/28-cloud-base"
  config.vm.synced_folder "/Users/malkarouri/Projects/", "/Projects", type: "virtualbox"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end

  config.vm.provision "ansible_local", run: "always" do |ansible|
    ansible.playbook = "system-playbook.yml"
    ansible.become = true
    ansible.compatibility_mode = "2.0"
  end

  config.vm.provision "ansible_local", run: "always" do |ansible|
    ansible.playbook = "user-playbook.yml"
    ansible.become = false
    ansible.compatibility_mode = "2.0"
  end
end

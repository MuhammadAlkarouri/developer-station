# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--usb", "on"]
#    vb.customize ['usbfilter', 'add', '0', '--target', :id, '--name', 'Broadcom Corp. Bluetooth USB Host Controller [0158]', '--vendorid', '0x05ac', '--productid', '0x8290']
#    vb.customize ['usbfilter', 'add', '0', '--target', :id, '--name', 'Apple Inc. Apple Internal Keyboard / Trackpad [0624]', '--vendorid', '0x05ac', '--productid', '0x0274']
  end


  config.landrush.enabled = true
  config.vm.hostname = "develop.vagrant.test"
  config.landrush.host "home.vagrant.test", "10.0.2.2"

  config.vm.box = "bento/fedora-28"
  config.vbguest.auto_update = true
  config.vbguest.auto_reboot = true

  config.vm.synced_folder "/Users/malkarouri/Projects/", "/Projects", type: "virtualbox"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
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

  config.vm.provision "file", source: "~/.ssh/id_rsa", destination: "$HOME/.ssh/id_rsa"
end

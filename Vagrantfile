# -*- mode: ruby -*-
# vi: set ft=ruby :

# NOTE: Variable overrides are in ./config.rb
require "yaml"
require "fileutils"


CONFIG = File.expand_path("config.rb")
if File.exist?(CONFIG)
  require CONFIG
end

Vagrant.configure("2") do |config|


  config.vm.define vm_name = "DevOps" do |node|
    node.vm.box = $box_name
    node.vm.box_url = [$box_url1, $box_url2] # can also use local files "file://somelocationtobox"
    node.vm.hostname = $box_hostname

    node.vm.provider "virtualbox" do |vb|
        vb.name = $box_hostname
        vb.customize ["modifyvm", :id, "--memory", $box_memory]
        vb.customize ["modifyvm", :id, "--cpus", $box_vcpus]
      end #end vb
    end #end node

    if Vagrant::Util::Platform.windows?
  		config.vm.provision :guest_ansible do |ansible|
  		ansible.sudo              = true #Can we remove this?
        ansible.verbose           = "vvv" #What is this?
        ansible.limit             = $ansible_limit
        ansible.playbook          = $ansible_playbook
        ansible.host_key_checking = false
      end #end ansible
    else
      config.vm.provision :ansible do |ansible|
        ansible.sudo              = true
        ansible.verbose           = "vvv"
        ansible.limit             = $ansible_limit
        ansible.playbook          = $ansible_playbook
        ansible.host_key_checking = false
      end #end ansible
    end
  end


#!/bin/bash
# Simple shell script to install Vagrant with Virtualbox development environment on Fedora 26
# Minimal version - no optional packages

set -e
# Any subsequent(*) commands which fail will cause the shell script to exit immediately

# Initial update
sudo dnf update -y

# Install git
sudo dnf install git -y

# Install Kernel Devel dependency to build kernel extensions for VirtualBox
# https://ask.fedoraproject.org/en/question/99415/i-cant-run-virtualbox-on-my-system-fedora-25/
sudo dnf install kernel-devel-$(uname -r) kernel-core-$(uname -r) -y

# Install Virtualbox 5.2
sudo dnf install http://download.virtualbox.org/virtualbox/5.2.0/VirtualBox-5.2-5.2.0_118431_fedora26-1.x86_64.rpm -y
sudo dnf update -y
# Rebuild Virtualbox Config
VBoxManage --version
sudo /sbin/vboxconfig


# Install Vagrant 2.0.1
sudo dnf install https://releases.hashicorp.com/vagrant/2.0.1/vagrant_2.0.1_x86_64.rpm -y
sudo dnf update -y

# Install Ansible
sudo dnf install ansible -y

# Create and move to DEV folder
mkdir vagrantDEV
cd vagrantDEV

# Clone project into DEV folder
git clone https://github.com/SIUE-DevOps/Vagrant_Docker_Cli.git
#!/bin/bash
# Simple shell script to install Vagrant with Virtualbox development environment on CentOS 7 / RHEL 7
# Minimal version - no optional packages

set -e
# Any subsequent(*) commands which fail will cause the shell script to exit immediately

# Initial update
sudo yum update -y

# Install git
sudo yum install git -y

# Install Virtualbox 5.2
sudo yum install http://download.virtualbox.org/virtualbox/5.2.0/VirtualBox-5.2-5.2.0_118431_el7-1.x86_64.rpm -y
sudo yum update -y

# Install Vagrant 2.0.1
sudo yum install https://releases.hashicorp.com/vagrant/2.0.1/vagrant_2.0.1_x86_64.rpm -y
sudo yum update -y

# Install Ansible
sudo yum install ansible -y

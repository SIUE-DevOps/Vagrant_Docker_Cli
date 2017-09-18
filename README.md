# Devops Toolkit
Objective: Provide a basis to learn and explore concepts used in industry today. Familiarize students with virtual machines(VMs), command line interface(CLI), and Continuous Intigration/Continuous Development(CI/CD) pipelines.

# Installing Utilities
Download VirtualBox. This application will hold the virtual machine that you create for your projects.
https://www.virtualbox.org/wiki/Downloads 

Choose the correct distribution for your set up.

Download and install Vagrant. We will use this tool to automate the production and tear down of virtual machines.
https://www.vagrantup.com/downloads.html 
Choose the correct distribution for your set up.

# Creating the VM
Vagrant greatly simplifies this step. A vagrantfile will be provided to you, place it into a directory and open your command prompt there. On windows shift+right-click will give you the option.

In the command prompt, enter "vagrant up" to initiate the start-up of your VM
 Once the set-up is complete you can pull up virtual box and you will see there is a VM running on your machineChoose the correct distribution for your set up.

# Using the VM
coming soon

# Destroying the VM
To remove the VM from your machine simply enter the command "vagrant destroy" into the command prompt on your host computer.


For more information on utilities:
VirtualBox: https://www.virtualbox.org/wiki/User_FAQ
Vagrant: https://docs-v1.vagrantup.com/v1/docs/getting-started/ 
Docker: https://docs.docker.com/engine/faq/ 
Travis CI: https://docs.travis-ci.com/user/getting-started/ 



# Linux Setup:
Fedora 26 

Commands:

# Virtualbox
1.) mkdir temp

2.) cd temp

3.) sudo dnf update

4.) sudo wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | rpm --import -

5.) cd /etc/yum.repos.d/

6.) sudo wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo

7.) sudo dnf update

8.) sudo dnf install binutils gcc make patch libgomp glibc-headers glibc-devel kernel-headers kernel-devel dkms

9.) sudo dnf install VirtualBox-5.1

# Vagrant
10.) sudo dnf install vagrant
# Ansible
11.) sudo dnf install python2

12.) sudo dnf install ansible
# Git

13.) sudo dnf install git

# Docker
14.) sudo dnf -y install dnf-plugins-core

15.) sudo dnf config-manager \ --add-repo \ https://download.docker.com/linux/fedora/docker-ce.repo

16.) sudo dnf makecache fast

17.) sudo dnf update

18.) sudo dnf install docker-ce



# Github SSH key instructions.
https://help.github.com/articles/connecting-to-github-with-ssh/ 

# Official Virtualbox installation instructions for various Linux distributions: https://www.virtualbox.org/wiki/Linux_Downloads 

# Official Vagrant download links for Debian, and CENTOS. 
https://www.vagrantup.com/downloads.html 

Note: Debian packages may or may not work on Ubuntu. 

# Official Ansible Installation instructions for most Linux distributions. 
https://docs.ansible.com/ansible/latest/intro_installation.html 

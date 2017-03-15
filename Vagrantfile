#WIP Vagrant file for xenial64 LTS
Vagrant.configure('2') do |config|
    config.vm.box = "ubuntu/xenial64"
    config.ssh.username = 'vagrant' # set username and password
	config.ssh.password = 'vagrant'
    config.vm.provider :virtualbox do |vb| #virtualbox provider config
        vb.name = "ClassNbr" #set vm name to class number
		vb.memory = 2048
		vb.cpus = 2
		vb.gui = true #enable GUI
		vb.customize ["modifyvm", :id, "--vram", "128"] #set video memory to 128 MB for GUI
    end
end

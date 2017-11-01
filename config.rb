$box_name   = "geerlingguy/ubuntu1604"
#$box_url1 = "https://atlas.hashicorp.com/geerlingguy/boxes/ubuntu1604/versions/1.1.2/providers/virtualbox.box"
#$box_localdir = "" # local box location # allows for local install
$box_hostname = "DevOps"
$box_memory = 1024
$box_vcpus  = 2

$ansible_playbook = "docker_cli/docker.yml"
$ansible_inventory = ".vagrant/provisioners/ansible/inventory_override"

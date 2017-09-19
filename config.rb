$box_name   = "geerlingguy/ubuntu1604"
#$box_localdir = "" # local box location
$box_hostname = "DevOps"
$box_memory = 4096 # increased from 2048
$box_vcpus  = 2

$ansible_playbook = "bootstrap_env/bootstrap.yml"
$ansible_inventory = ".vagrant/provisioners/ansible/inventory_override"

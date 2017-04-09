$box_name   = "geerlingguy/ubuntu1604"
$box_url2 = "https://devops.117.bz/boxes/ubuntu/server/virtualbox.box" #primary download url Temporarily swtiched
$box_url1 = "https://atlas.hashicorp.com/geerlingguy/boxes/ubuntu1604/versions/1.1.2/providers/virtualbox.box" #secondary download url
$box_localdir = "" # local box location
$box_hostname = "DevOps"
$box_memory = 1024
$box_vcpus  = 2

$ansible_playbook = "bootstrap_env/bootstrap.yml"
$ansible_inventory = ".vagrant/provisioners/ansible/inventory_override"

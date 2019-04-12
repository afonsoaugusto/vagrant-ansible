# vagrant-ansible

### Install vagrant
```
wget https://releases.hashicorp.com/vagrant/2.2.4/vagrant_2.2.4_x86_64.rpm
sudo yum install vagrant_2.2.4_x86_64.rpm


vagrant init centos/7

╭─arodrigues@centosdell ~/Documentos/DevOps/projetos/vagrant-ansible  ‹master*› 
╰─$ vagrant up     
Bringing machine 'master' up with 'virtualbox' provider...
Bringing machine 'slavea' up with 'virtualbox' provider...
Bringing machine 'slaveb' up with 'virtualbox' provider...
==> master: Importing base box 'centos/7'...
==> master: Matching MAC address for NAT networking...
==> master: Checking if box 'centos/7' version '1902.01' is up to date...
==> master: Setting the name of the VM: vagrant-ansible_master_1555029497275_96434
==> master: Clearing any previously set network interfaces...
==> master: Preparing network interfaces based on configuration...
    master: Adapter 1: nat
    master: Adapter 2: hostonly
==> master: Forwarding ports...
    master: 22 (guest) => 2222 (host) (adapter 1)
==> master: Booting VM...
==> master: Waiting for machine to boot. This may take a few minutes...
    master: SSH address: 127.0.0.1:2222
    master: SSH username: vagrant
    master: SSH auth method: private key
    master: 
    master: Vagrant insecure key detected. Vagrant will automatically replace
    master: this with a newly generated keypair for better security.
    master: 
    master: Inserting generated public key within guest...
    master: Removing insecure key from the guest if it's present...
    master: Key inserted! Disconnecting and reconnecting using new SSH key...
==> master: Machine booted and ready!
==> master: Checking for guest additions in VM...
    master: No guest additions were detected on the base box for this VM! Guest
    master: additions are required for forwarded ports, shared folders, host only
    master: networking, and more. If SSH fails on this machine, please install
    master: the guest additions and repackage the box to continue.
    master: 
    master: This is not an error message; everything may continue to work properly,
    master: in which case you may ignore this message.
==> master: Setting hostname...
==> master: Configuring and enabling network interfaces...
==> master: Rsyncing folder: /home/arodrigues/Documentos/DevOps/projetos/vagrant-ansible/ => /vagrant
==> slavea: Importing base box 'centos/7'...
==> slavea: Matching MAC address for NAT networking...
==> slavea: Checking if box 'centos/7' version '1902.01' is up to date...
==> slavea: Setting the name of the VM: vagrant-ansible_slavea_1555029546313_70584
==> slavea: Fixed port collision for 22 => 2222. Now on port 2200.
==> slavea: Clearing any previously set network interfaces...
==> slavea: Preparing network interfaces based on configuration...
    slavea: Adapter 1: nat
    slavea: Adapter 2: hostonly
==> slavea: Forwarding ports...
    slavea: 22 (guest) => 2200 (host) (adapter 1)
==> slavea: Booting VM...
==> slavea: Waiting for machine to boot. This may take a few minutes...
    slavea: SSH address: 127.0.0.1:2200
    slavea: SSH username: vagrant
    slavea: SSH auth method: private key
    slavea: 
    slavea: Vagrant insecure key detected. Vagrant will automatically replace
    slavea: this with a newly generated keypair for better security.
    slavea: 
    slavea: Inserting generated public key within guest...
    slavea: Removing insecure key from the guest if it's present...
    slavea: Key inserted! Disconnecting and reconnecting using new SSH key...
==> slavea: Machine booted and ready!
==> slavea: Checking for guest additions in VM...
    slavea: No guest additions were detected on the base box for this VM! Guest
    slavea: additions are required for forwarded ports, shared folders, host only
    slavea: networking, and more. If SSH fails on this machine, please install
    slavea: the guest additions and repackage the box to continue.
    slavea: 
    slavea: This is not an error message; everything may continue to work properly,
    slavea: in which case you may ignore this message.
==> slavea: Setting hostname...
==> slavea: Configuring and enabling network interfaces...
==> slavea: Rsyncing folder: /home/arodrigues/Documentos/DevOps/projetos/vagrant-ansible/ => /vagrant
==> slaveb: Importing base box 'centos/7'...
==> slaveb: Matching MAC address for NAT networking...
==> slaveb: Checking if box 'centos/7' version '1902.01' is up to date...
==> slaveb: Setting the name of the VM: vagrant-ansible_slaveb_1555029593909_77130
==> slaveb: Fixed port collision for 22 => 2222. Now on port 2201.
==> slaveb: Clearing any previously set network interfaces...
==> slaveb: Preparing network interfaces based on configuration...
    slaveb: Adapter 1: nat
    slaveb: Adapter 2: hostonly
==> slaveb: Forwarding ports...
    slaveb: 22 (guest) => 2201 (host) (adapter 1)
==> slaveb: Booting VM...
==> slaveb: Waiting for machine to boot. This may take a few minutes...
    slaveb: SSH address: 127.0.0.1:2201
    slaveb: SSH username: vagrant
    slaveb: SSH auth method: private key
    slaveb: 
    slaveb: Vagrant insecure key detected. Vagrant will automatically replace
    slaveb: this with a newly generated keypair for better security.
    slaveb: 
    slaveb: Inserting generated public key within guest...
    slaveb: Removing insecure key from the guest if it's present...
    slaveb: Key inserted! Disconnecting and reconnecting using new SSH key...
==> slaveb: Machine booted and ready!
==> slaveb: Checking for guest additions in VM...
    slaveb: No guest additions were detected on the base box for this VM! Guest
    slaveb: additions are required for forwarded ports, shared folders, host only
    slaveb: networking, and more. If SSH fails on this machine, please install
    slaveb: the guest additions and repackage the box to continue.
    slaveb: 
    slaveb: This is not an error message; everything may continue to work properly,
    slaveb: in which case you may ignore this message.
==> slaveb: Setting hostname...
==> slaveb: Configuring and enabling network interfaces...
==> slaveb: Rsyncing folder: /home/arodrigues/Documentos/DevOps/projetos/vagrant-ansible/ => /vagrant
╭─arodrigues@centosdell ~/Documentos/DevOps/projetos/vagrant-ansible  ‹master*› 
╰─$ vagrant status
Current machine states:

master                    running (virtualbox)
slavea                    running (virtualbox)
slaveb                    running (virtualbox)

This environment represents multiple VMs. The VMs are all listed
above with their current state. For more information about a specific
VM, run `vagrant status NAME`.
╭─arodrigues@centosdell ~/Documentos/DevOps/projetos/vagrant-ansible  ‹master*› 
╰─$ 

╭─arodrigues@centosdell ~/Documentos/DevOps/projetos/vagrant-ansible  ‹master*› 
╰─$ vagrant ssh-config
Host master
  HostName 127.0.0.1
  User vagrant
  Port 2222
  UserKnownHostsFile /dev/null
  StrictHostKeyChecking no
  PasswordAuthentication no
  IdentityFile /home/arodrigues/Documentos/DevOps/projetos/vagrant-ansible/.vagrant/machines/master/virtualbox/private_key
  IdentitiesOnly yes
  LogLevel FATAL

Host slavea
  HostName 127.0.0.1
  User vagrant
  Port 2200
  UserKnownHostsFile /dev/null
  StrictHostKeyChecking no
  PasswordAuthentication no
  IdentityFile /home/arodrigues/Documentos/DevOps/projetos/vagrant-ansible/.vagrant/machines/slavea/virtualbox/private_key
  IdentitiesOnly yes
  LogLevel FATAL

Host slaveb
  HostName 127.0.0.1
  User vagrant
  Port 2201
  UserKnownHostsFile /dev/null
  StrictHostKeyChecking no
  PasswordAuthentication no
  IdentityFile /home/arodrigues/Documentos/DevOps/projetos/vagrant-ansible/.vagrant/machines/slaveb/virtualbox/private_key
  IdentitiesOnly yes
  LogLevel FATAL
```
```
╭─arodrigues@centosdell ~/Documentos/DevOps/projetos/vagrant-ansible  ‹master*› 
╰─$ ssh vagrant@10.0.0.10                    
The authenticity of host '10.0.0.10 (10.0.0.10)' can't be established.

╭─arodrigues@centosdell ~/Documentos/DevOps/projetos/vagrant-ansible  ‹master*› 
╰─$ vagrant ssh master                                                                                   1 ↵
[vagrant@master ~]$ 
```

```
scp -i .vagrant/machines/master/virtualbox/private_key .vagrant/machines/master/virtualbox/private_key vagrant@10.0.0.10:/home/vagrant/.ssh/master.pub
scp -i .vagrant/machines/master/virtualbox/private_key .vagrant/machines/slavea/virtualbox/private_key vagrant@10.0.0.10:/home/vagrant/.ssh/slavea.pub
scp -i .vagrant/machines/master/virtualbox/private_key .vagrant/machines/slaveb/virtualbox/private_key vagrant@10.0.0.10:/home/vagrant/.ssh/slaveb.pub
```

```
sudo yum -y install ansible
sudo vi /etc/ansible/hosts

[DevOps]
master ansible_ssh_host=10.0.0.10 ansible_ssh_port=22 ansible_ssh_user=vagrant ansible_ssh_private_key_file=/home/vagrant/.ssh/master.pub
slavea ansible_ssh_host=10.0.0.11 ansible_ssh_port=22 ansible_ssh_user=vagrant ansible_ssh_private_key_file=/home/vagrant/.ssh/slavea.pub
slaveb ansible_ssh_host=10.0.0.12 ansible_ssh_port=22 ansible_ssh_user=vagrant ansible_ssh_private_key_file=/home/vagrant/.ssh/slaveb.pub
```

```
sudo ansible -m ping DevOps

[vagrant@master ~]$ sudo ansible -m ping DevOps
slavea | SUCCESS => {
    "changed": false, 
    "ping": "pong"
}
slaveb | SUCCESS => {
    "changed": false, 
    "ping": "pong"
}
master | SUCCESS => {
    "changed": false, 
    "ping": "pong"
}
[vagrant@master ~]$ 
```

Referencia:

[] (https://medium.com/@megawan/provisioning-vagrant-multi-machines-with-ansible-32e1809816c5)
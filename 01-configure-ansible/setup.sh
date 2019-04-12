sudo yum -y install ansible
sudo useradd ansible
sudo passwd ansible
sudo su - ansible
ssh-keygen

Your identification has been saved in /home/ansible/.ssh/id_rsa.
Your public key has been saved in /home/ansible/.ssh/id_rsa.pub.

ssh-copy-id 10.0.0.11
ssh-copy-id 10.0.0.12


ssh -i /home/vagrant/.ssh/slavea.pub 10.0.0.11
ssh -i /home/vagrant/.ssh/slaveb.pub 10.0.0.12
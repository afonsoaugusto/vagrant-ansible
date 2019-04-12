Vagrant.configure("2") do |config|
  config.vm.define "master" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "master"
    subconfig.vm.network :private_network, ip: "10.0.0.10"
  end
  config.vm.define "slavea" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "slavea"
    subconfig.vm.network :private_network, ip: "10.0.0.11"
  end
  config.vm.define "slaveb" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "slaveb"
    subconfig.vm.network :private_network, ip: "10.0.0.12"
  end
end
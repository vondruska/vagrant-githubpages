Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  #config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.network "forwarded_port", guest: 4000, host: 4000
  config.vm.provision "shell", path: "provision.sh"
  config.vm.provision "shell", inline: "jekyll serve --detach -s /home/vagrant/jekyll", run: "always", privileged: "false"
  config.vm.synced_folder "src/", "/home/vagrant/jekyll"
end

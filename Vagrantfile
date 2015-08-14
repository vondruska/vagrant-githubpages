Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: 4000, host: 4000
  config.vm.provision "shell", path: "provision.sh"
  config.vm.provision "shell", inline: "screen -A -m -d -S jekyll jekyll serve -s /home/vagrant/jekyll --force_polling &", run: "always", privileged: false
  config.vm.synced_folder "src/", "/home/vagrant/jekyll"
end

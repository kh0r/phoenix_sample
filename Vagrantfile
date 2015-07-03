# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

$script = <<SCRIPT
echo I am provisioning...
wget -N http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
sudo apt-get update && sudo apt-get -y install git=1:1.9.1-1ubuntu0.1 elixir=1.0.4-1 npm=1.3.10~dfsg-1 nodejs-legacy=0.10.25~dfsg2-2ubuntu1
mix archive.install https://github.com/phoenixframework/phoenix/releases/download/v0.14.0/phoenix_new-0.14.0.ez --force
SCRIPT

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty64"

  config.vm.hostname = 'phoenix.local'
  config.vm.network 'private_network', ip: '33.33.33.10'
  config.vm.synced_folder '../', '/var/www/phoenix/', type: 'nfs'

  config.vm.provision "shell", inline: $script
end

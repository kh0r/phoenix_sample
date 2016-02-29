# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<SCRIPT
echo I am provisioning...
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
wget -N http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
sudo apt-get update && sudo apt-get -y install git elixir nodejs esl-erlang inotify-tools
mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez --force

sudo apt-get install postgresql-client postgresql postgresql-contrib -y
sudo -u postgres createdb phoenix_sample_dev
sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'postgres';"

SCRIPT

Vagrant.configure(2) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty64"

  config.vm.hostname = 'phoenix.local'
  config.vm.network 'private_network', ip: '33.33.33.10'
  config.vm.synced_folder './', '/var/www/phoenix/', type: 'nfs'

  config.vm.provision "shell", inline: $script

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end
end

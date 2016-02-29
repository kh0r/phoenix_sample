# phoenix_sample
My first [phoenix](http://www.phoenixframework.org/v0.14.0) project

## Requirements
https://www.vagrantup.com/downloads.html
(optional) https://github.com/cogitatio/vagrant-hostsupdater

## Installation
```
vagrant up
vagrant ssh
cd /var/www/phoenix/
mix deps.get
mix ecto.create && mix ecto.migrate
npm install
mix phoenix.server
```

Visit [phoenix.local:4000](http://phoenix.local:4000) in your browser

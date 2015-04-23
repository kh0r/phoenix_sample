# phoenix_sample
My first [phoenix](http://www.phoenixframework.org/v0.11.0) project

## Requirements
https://www.vagrantup.com/downloads.html

## Installation

```
vagrant up
vagrant ssh
cd /var/www/phoenix/phoenix_sample/
mix deps.get
npm install
mix phoenix.server
```

Visit phoenix.local:4000 in your browser

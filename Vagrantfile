# encoding: utf-8
# This file originally created at http://rove.io/2c31db58c88bc7e8477ec023d4960a4e

# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"
  config.ssh.forward_agent = true

  # Add port-forward for Express app
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  # Add port-forward for Livereload
  config.vm.network :forwarded_port, guest: 35729, host: 35729
  # Add port-forward for Nginx
  config.vm.network :forwarded_port, guest: 80, host: 80

  config.vm.synced_folder "development/", "/home/vagrant/development"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.add_recipe :apt
    chef.add_recipe 'redis'
    chef.add_recipe 'git'
    chef.add_recipe 'nginx'
    chef.add_recipe 'vim'
    chef.add_recipe 'nodejs'
    chef.add_recipe 'mongodb::default'
    chef.json = {
      :redis   => {
        :bind        => "127.0.0.1",
        :port        => "6379",
        :config_path => "/etc/redis/redis.conf",
        :daemonize   => "yes",
        :timeout     => "300",
        :loglevel    => "notice"
      },
      :git     => {
        :prefix => "/usr/local"
      },
      :nginx   => {
        :dir                => "/etc/nginx",
        :log_dir            => "/var/log/nginx",
        :binary             => "/usr/sbin/nginx",
        :user               => "www-data",
        :init_style         => "runit",
        :pid                => "/var/run/nginx.pid",
        :worker_connections => "1024"
      },
      :mongodb => {
        :dbpath  => "/var/lib/mongodb",
        :logpath => "/var/log/mongodb",
        :port    => "27017"
      }
    }
  end

  # Install dependencies
  config.vm.provision :shell, :path => "install.sh"

end

# encoding: utf-8
# This file originally created at http://rove.io/3dc380d19f881eaf77ecbe6bded63ad4

# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "opscode-ubuntu-12.04_chef-11.4.0"
  config.vm.box_url = "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_chef-11.4.0.box"

  config.vm.provider "virtualbox" do |v|
    v.memory = 2500
  end

  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.ssh.forward_agent = true

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.add_recipe :apt
    chef.add_recipe 'vim'
    chef.add_recipe "mongodb::10gen_repo"
    chef.add_recipe "mongodb"
    chef.add_recipe 'nodejs'
    chef.add_recipe 'git'
    chef.add_recipe 'nginx'
    chef.add_recipe 'redis'
    chef.json = {
      :mongodb => {
        :package_version => "2.4.0",
        :dbpath  => "/var/lib/mongodb",
        :logpath => "/var/log/mongodb",
        :port    => "27017"
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
      :redis   => {
        :bind        => "127.0.0.1",
        :port        => "6379",
        :config_path => "/etc/redis/redis.conf",
        :daemonize   => "yes",
        :timeout     => "300",
        :loglevel    => "notice"
      }
    }
  end

  config.vm.provision :shell, :path => "bootstrap.sh"

end

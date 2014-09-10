# Creating a Vagrant Virtual Development Environment for MEAN Development

### Vagrant
[Vagrant](http://docs.vagrantup.com/v2/why-vagrant/index.html) is open-source software used to create lightweight and portable virtual development environments. Vagrant works like a "wrapper" for VirtualBox that can create, configure, and destroy virtual machines with the use of its own terminal commands. Vagrant facilitates the setup of environments without any direct interaction with VirtualBox and allows developers to use preferred editors and browsers in their native operating system.
### M.E.A.N
[MEAN](http://mean.io) is a boilerplate that provides a nice starting point for [MongoDB](http://www.mongodb.org/), [Node.js](http://www.nodejs.org/), [Express](http://expressjs.com/), and [AngularJS](http://angularjs.org/) based applications. It is designed to give you quick and organized way to start developing of MEAN based web apps with useful modules like mongoose and passport pre-bundled and configured. We mainly try to take care of the connection points between existing popular frameworks and solve common integration problems.  

**:exclamation:Note:** This document is for setting up a virtual environment on a Unix host.

## Install Vagrant
* Download and install [VirtualBox 4.3.12](https://www.virtualbox.org/wiki/downloads)
     * Do not open VirtualBox or create a virtual machine. This will be
       handled by Vagrant.
* Download and install [Vagrant 1.6.5](http://www.vagrantup.com/downloads.html)
     * Package managers like apt-get and gem install will install an
       older version of Vagrant so it is required to use the download page.

## Configure Environment

`Vagrantfile` is a main Vagrant configuration. Typically it is supposed
to be placed at the root of your project. Just put it whenever you want
your box root should be. Additional documentation can be found here.

`Cheffile` describes sources of cookbooks we use to provision packages you demanded.
It's used by Librarian to download all the cookbooks you need including
referenced dependencies. Unless you already have it install it using
`sudo gem install librarian-chef` command.
To finalize the setup and run your box you should:
- put both of files to the root of your project (it will be the root of a virtual box)
- run `librarian-chef install` to grab required cookbooks

## Connect to the Virtual Machine
Install VirtualBox Guest Additions Plugin
```
$ vagrant plugin install vagrant-vbguest
```
Run `vagrant up` to download, provision and start your brand new box environment.
```
$ vagrant up
```
Connect to the virtual machine via ssh:
```
$ vagrant ssh
```

To Stop the Virtual Machine
```
$ vagrant halt
```
To Suspend it
```
$ vagrant suspend
```
Back to init again
```
$ vagrant up
```
To reload if it is running:
```
$ vagrant reload
```
To remove completly:
```
$ vagrant destroy
```
## Run Hello World
`src` folder contains the source code for your project. This example contains
a 'hello.js' file that only puts 'hello world!' on your console.

## Installed Software
 - **Ubuntu** v14.04 LTS
 - **Git** v1.9.1
 - **Node.js** v0.10.31
 - **Vim** v7.4.52
 - **MongoDB** v2.4.9
    - DB Path: `/var/lib/mongodb`
    - Log Path: `/var/log/mongodb`
    - Port: `27017`
 - **Redis** v2.8.4
    - Config Path: `/etc/redis/redis.conf`
    - Bind: `127.0.0.1`
    - Port: `6379`
  - **Nginx** v1.4.6
    - Path: `/etc/nginx`
    - Log Path: `/var/log/nginx`

- Forwarded Ports:
    - `3000` Node.js App
    - `80` Nginx Port
    - `35729` Livereload port

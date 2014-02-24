vagrant-mean
============

Vagrant configuration to use a MEAN stack development environment 

You need download: 
- [Virtual Box](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](http://www.vagrantup.com/downloads.html)

Vagrantfile is a main Vagrant configuration. Typically it is supposed to be placed at the root of your project. Just put it whenever you want your box root should be. Additional documentation can be found here.
Cheffile describes sources of cookbooks we use to provision packages you demanded. It's used by Librarian to download all the cookbooks you need including referenced dependencies. Unless you already have it install it using `sudo gem install librarian-chef` command.
To finalize the setup and run your box you should:

- put both of files to the root of your project (it will be the root of a virtual box)
- run `librarian-chef install` to grab required cookbooks
- run `vagrant up` to download, provision and start your brand new box environment.

#Installed Software
 - Git
 - Node (Express, Bower, Grunt, Nodemon, Forever, Stylus)
 - Nginx
 - MongoDB
 - Redis
 

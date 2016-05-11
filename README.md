# webdev-box

Virtualized, containerized environment suited to front-end development.

## Getting Started

Clone this repository to a folder that is a parent of the web projects you want to work
with.

Create and start the virtual machine.

`vagrant up`

Log in to virtual machine command line.

`vagrant ssh`

Change to root of the host -> guest synced folder.

`cd /sync`

Prove to yourself that you are now looking at the files on your host machine

`ls`

If you have not built the docker image before, do that next

`docker build -t vigie/webdev-box .`

Start the development container

` docker run -it -d --name WebDevBox -v $(pwd):/repo --net=host vigie/webdev-box`

Navigate to your web projects directory and develop as normal. Npm/bower/jspm dependencies
will be written to the virtual machines storage but will not appear on your host file 
system. Edit your source code on your host machine in your editor of choice as normal.



### Pre-requisites

[Vagrant](https://www.vagrantup.com/docs/installation/)

[vagrant-gatling-rsync](https://github.com/smerrill/vagrant-gatling-rsync) Vagrant plugin 

[Virtualbox](https://www.virtualbox.org/wiki/Downloads)

[Cygwin](https://cygwin.com/install.html) (if host is not a flavor of unix)

## How it works

## Why?

## Credit/Inspiration

http://hharnisc.github.io/2015/09/16/developing-inside-docker-containers-with-osx.html

http://activelamp.com/blog/devops/local-docker-development-with-vagrant/

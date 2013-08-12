Jon Morehouse's Vagrant Box Packages
=

A place to keep my vagrant box packages for use on servers etc

Packages
-

-	Base 

	-	Vim / Tmux installed
	-	[Custom Dotfiles](http://github.com/MorehouseJ09/light-dotfiles)

-	Docker

	-	Base Package
	-	[Docker](http://github.com/dotcloud/docker)

-	Node

	-	Docker Package
	-	Node.js Installed via these [directions](http://schier.co/post/install-nodejs-on-ubuntu-server-with-ppa)

Downloads
-

-	[Base](http://vagrant.jumperapi.com/base.box)
-	[Docker](http://vagrant.jumperapi.com/docker.box)
-	[Node](http://vagrant.jumperapi.com/node.box)

Usage
-

-	1.) Clone repository to a local path 
-	2.) Add the box to your vagrant installation
		
		`vagrant box add box_name /path/to/package.box`

-	3.) Initialize the box
	
		`vagrant init box_name`

-	4.) Start up an instance

		`vagrant up`

-	5.) You should now have a fully running version of the application box as needed


Deployment
-

-	1.) Serve this repo at vagrant.jumperapi.com 
-	2.) Initialize download links under downloads.jumperapi.com




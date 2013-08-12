Jon Morehouse's Vagrant Box Packages
=

A place to keep my vagrant box packages for use on servers etc

Notes
-

-	This should be delivered via a server in the future /s3
-	Each folder is a different package / box setup
-	This needs to initialize a grunt task to push all of the boxes  to the correct locations online
-	This should be exposed at vagrant.engineering.jumperapp.com
-	Grunt task to read the local aws_secret / key etc 

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

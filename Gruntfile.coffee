# initialize a basic grunt task to copy this site and architecture to s3 for delivery
# copy the packages etc into the correct place
# in the future, we could forward all but the homepage to github?
# make sure to source the devops information before hand to initialize environment variables
# https://github.com/pifantastic/grunt-s3
module.exports = (grunt)->

	grunt.loadNpmTasks "grunt-s3"	
	

	grunt.initConfig

		# load in our aws configuration settings from a global jumper resource file
		#aws: "~/Documents/production_development/jumper-devops/resources/grunt_aws.json""

		s3:
			# just go ahead and grab our devops key/secret for now
			#key: "<%= aws.key %>"
			#secret: "<%= aws.secret %>"
			bucket: "vagrant.jumperapi.com"
			access: "public-read"
	
		dev:	
			options: {}

			upload: [

				{

					src: "base/package.box"
					dest: "base.box"
					gzip: true

				},
				{
					src: "docker/package.box"
					dest: "docker.box"
					gzip: true
				}
			]


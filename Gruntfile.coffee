# initialize a basic grunt task to copy this site and architecture to s3 for delivery
# copy the packages etc into the correct place
# in the future, we could forward all but the homepage to github?
# make sure to source the devops information before hand to initialize environment variables
# https://github.com/pifantastic/grunt-s3
module.exports = (grunt)->

	grunt.loadNpmTasks "grunt-s3"	
	
	grunt.initConfig

		s3:

			options:
				# just go ahead and grab our devops key/secret for now
				bucket: "vagrant.jumperapi.com"
				region: "us-west-1"
				access: "public-read"
	
			dev:	
				upload: [

					{
						src: "base/package.box"
						dest: "base.box"
					},
					{
						src: "docker/package.box" 
						dest: "docker.box"
					},
					{

						src: "node/package.box"
						dest: "node.box"


					}
				]

	grunt.registerTask "default", "s3"	

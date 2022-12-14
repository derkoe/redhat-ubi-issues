#############################################################
# Let's try to install nodejs - works on UBI8, fails on UBI9
# This fails
build-node-ubi9:
	docker build --build-arg BASE_IMAGE=registry.access.redhat.com/ubi9/ubi -t nodejs:18-ubi9 nodejs-module
# This works
build-node-ubi8:
	docker build --build-arg BASE_IMAGE=registry.access.redhat.com/ubi8/ubi -t nodejs:18-ubi8 nodejs-module
# This works
build-node-alma9:
	docker build --build-arg BASE_IMAGE=docker.io/library/almalinux:9 -t nodejs:18-alma9 nodejs-module

#############################################################
# Lets' try to add Chrome to an UBI image
# This fails
build-chrome-ubi9:
	docker build --build-arg BASE_IMAGE=registry.access.redhat.com/ubi9/ubi -t google-chrome:ubi9 google-chrome
# This works (almalinux is a binary compatible RHEL clone)
build-chrome-alma9:
	docker build --build-arg BASE_IMAGE=docker.io/library/almalinux:9 -t google-chrome:alma9 google-chrome

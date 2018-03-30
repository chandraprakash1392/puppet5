# puppet5 Docker

Using this code, its possible to create a puppet 5 master server on Docker Container.

# How to setup the puppet master:
apt-get update -y

apt-get install docker.io

git clone git@github.com:chandraprakash1392/puppet5.git

cd puppet5

cd code/environments

// Create your test environment or use my acceptance environment

// To create your manifests, go into the manifests directory

// To create your modules, go into the modules directory

Once you are done with these things, go to the root git directory "puppet5"

cd docker

docker build -t <docker_image_tag> .

cd "puppet5"

# To run the container:
docker run -itd \
--net host \
--name puppet_master \
-v puppet5/code/:/etc/puppetlabs/code/ \
-v puppet5/mcollective/:/etc/puppetlabs/mcollective/ \
-v puppet5/puppet/auth.conf:/etc/puppetlabs/puppet/auth.conf \
-v puppet5/puppet/hiera.yaml:/etc/puppetlabs/puppet/hiera.yaml \
-v puppet5/puppet/puppet.conf:/etc/puppetlabs/puppet/puppet.conf \
-v puppet5/puppet/puppetdb.conf:/etc/puppetlabs/puppet/puppetdb.conf \
-v puppet5/puppetserver/:/etc/puppetlabs/puppetserver/ \
-v puppet5/pxp-agent/:/etc/puppetlabs/pxp-agent/ \
-v puppet5/puppetdb/:/etc/puppetlabs/puppetdb/ \
<docker_image_tag>



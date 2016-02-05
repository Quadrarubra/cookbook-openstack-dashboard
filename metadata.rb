name 'openstack-dashboard'
maintainer 'openstack-chef'
maintainer_email 'openstack-dev@lists.openstack.org'
license 'Apache 2.0'
description 'Installs/Configures the OpenStack Dashboard (Horizon)'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '12.0.2'

recipe 'openstack-dashboard::horizon', 'Sets up the Horizon dashboard.'
recipe 'openstack-dashboard::apache2-server', 'Sets up an Apache `mod_wsgi` container to run the dashboard.'
recipe 'openstack-dashboard::server', 'Sets up the Horizon dashboard and webserver to run it.'

%w(ubuntu fedora redhat centos suse).each do |os|
  supports os
end

depends 'apache2', '~> 3.1'
depends 'openstack-common', '>= 12.0.0'

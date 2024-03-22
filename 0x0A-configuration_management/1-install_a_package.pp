#!/usr/bin/pup
# Puppet resource to ensure the package is installed
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'],
}

# Ensuring python3-pip package is installed
package { 'python3-pip':
  ensure => 'installed',
}

#!/usr/bin/pup
# Puppet resource to ensure the package is installed
package {'Flask':
  ensure   => '2.1.0',
  provider => 'pip3'
}

# Use Puppet to automate the task of creating a custom HTTP header response

# Update package information
exec { 'update':
  command => '/usr/bin/apt-get update',
}

# Install Nginx package
package { 'nginx':
  ensure => 'present',
}

# Define a custom fact to retrieve the server's hostname
$server_hostname = $facts['hostname']

# Configure Nginx to add the custom HTTP header
file_line { 'http_header':
  path  => '/etc/nginx/nginx.conf',
  match => 'http {',
  line  => "http {\n\tadd_header X-Served-By \"${server_hostname}\";",
  require => Package['nginx'],
  notify  => Exec['run'],
}

# Restart Nginx service after configuration change
exec {'run':
  command => '/usr/sbin/service nginx restart',
  refreshonly => true,
}

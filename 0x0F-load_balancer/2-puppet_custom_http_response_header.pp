# File: 2-puppet_custom_http_response_header.pp

# Define a class to manage the custom HTTP header
class custom_http_response_header {

  # Ensure the 'nginx' package is installed
  package { 'nginx':
    ensure => installed,
  }

  # Define a custom fact to retrieve the server's hostname
  $server_hostname = $facts['hostname']

  # Define a file resource to add the custom HTTP header configuration
  file { '/etc/nginx/conf.d/custom_headers.conf':
    ensure  => present,
    content => "add_header X-Served-By $server_hostname;\n",
    require => Package['nginx'],
    notify  => Service['nginx'],
  }

}

# Apply the class to configure the custom HTTP header
include custom_http_response_header

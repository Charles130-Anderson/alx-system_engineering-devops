# Define a class to manage the custom HTTP header
class custom_http_response_header {

  # Update package information
  exec { 'apt-update':
    command => '/usr/bin/apt-get -y update',
    path    => ['/usr/bin', '/bin'],
  }

  # Install Nginx package
  package { 'nginx':
    ensure => installed,
  }

  # Create a basic HTML file
  file { '/var/www/html/index.html':
    content => 'Hello World!',
  }

  # Define a custom fact to retrieve the server's hostname
  $server_hostname = $facts['hostname']

  # Configure Nginx to add the custom HTTP header
  file_line { 'add custom header':
    ensure => present,
    path   => '/etc/nginx/sites-available/default',
    line   => "\tadd_header X-Served-By ${server_hostname};",
    after  => 'server_name _;',
    require => Package['nginx'],
    notify  => Service['nginx'],
  }

  # Ensure Nginx is running
  service { 'nginx':
    ensure => running,
  }

}

# Apply the class to configure the custom HTTP header
include custom_http_response_header

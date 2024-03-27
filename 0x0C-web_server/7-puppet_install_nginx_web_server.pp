# Puppet manifest to install and configure Nginx web server

# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Configure Nginx server
file { '/etc/nginx/sites-enabled/default':
  ensure  => present,
  content => "
            server {
              listen 80 default_server;
              root /var/www/html;
              index index.html index.htm;
              location / {
                try_files \$uri \$uri/ =404;
              }
              location = /redirect_me {
                return 301 https://github.com/Charles130-Anderson;
              }
            }
            ",
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Ensure the content of /var/www/html/index.html contains "Hello World!"
file { '/var/www/html/index.html':
  ensure  => present,
  content => 'Hello World!',
}

# Ensure Nginx service is running
service { 'nginx':
  ensure => running,
  enable => true,
}

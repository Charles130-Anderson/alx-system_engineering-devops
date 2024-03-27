# Puppet automation
package { 'nginx':
  ensure => installed,
}
file { 'install':
  ensure => 'present',
  path   => '/etc/nginx/sites-enabled/default',
  after  => 'listen 80 default_server',
  line   => 'rewrite ^\/redirect_me https:\/\/github.com\/Charles130-Anderson permanent;',
}
file { '/var/www/html/index.html':
  content => 'Hello world!'
}
service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}

# Puppet manifest to install Flask package from pip3

package { 'werkzeug':
  ensure   => '2.1.0',
  provider => 'pip3',
}

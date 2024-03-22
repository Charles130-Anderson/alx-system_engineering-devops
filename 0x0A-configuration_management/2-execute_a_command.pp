# Puppet manifest to kill the process named "killmenow" using pkill command

exec { 'kill_process':
  command => 'pkill -f killmenow',
  path    => ['/usr/bin', '/usr/local/bin', '/bin'],
}

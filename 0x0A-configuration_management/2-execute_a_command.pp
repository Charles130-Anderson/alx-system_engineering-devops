# Puppet manifest to kill a process named killmenow using pkill

exec { 'killmenow':
  command     => '/usr/bin/pkill -f killmenow',
  path        => ['/usr/bin', '/bin'],  # Add the necessary paths where pkill is located
  refreshonly => true,  # Ensure the command runs only when triggered
}


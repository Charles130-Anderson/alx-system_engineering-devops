# Puppet manifest to kill a process named killmenow using pkill

exec { 'killmenow':
  command     => 'pkill killmenow',
  refreshonly => true,
}

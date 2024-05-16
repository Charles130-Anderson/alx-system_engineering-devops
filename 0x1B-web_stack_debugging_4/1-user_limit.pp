# Increase the limit of open files for the user
exec {'increase-file-limit-1':
  provider => shell,
  command  => 'sudo sed -i "s/nofile 5/nofile 50000/" /etc/security/limits.conf',
  before   => Exec['increase-file-limit-2'],
}

# Further increase the limit of open files for the user
exec {'increase-file-limit-2':
  provider => shell,
  command  => 'sudo sed -i "s/nofile 4/nofile 40000/" /etc/security/limits.conf',
}

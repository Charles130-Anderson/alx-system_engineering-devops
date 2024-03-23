#!/usr/bin/env bash
# using puppet to make changes to the config file

file_line { 'etc/ssh/ssh_config':
  ensure  => present,
  content => "    Host *\n    IdentifyFile ~/.ssh/school\n    PasswordAuthentication no\n",
}

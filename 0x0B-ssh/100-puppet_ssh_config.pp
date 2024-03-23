#!/usr/bin/env bash
# using puppet to make changes to the config file

file_line { 'etc/ssh/ssh_config':
             ensure => present,
content =>"
        host* IdentifyFile ~/.ssh/school
        passwordAuthentication no",
}

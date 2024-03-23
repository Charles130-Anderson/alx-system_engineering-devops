#!/usr/bin/env bash

# Ensure the SSH configuration file exists
file { '/etc/ssh/ssh_config':
    ensure  => present,
    # Set the content of the file
    content => "
      # SSH client configuration to use private key
      Host *
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
    ",
 }


#!/usr/bin/env bash
# Define a Puppet class to manage SSH configuration
class ssh_config {
  # Ensure the SSH configuration file exists
  file { '/etc/ssh/ssh_config':
    ensure  => present,
    # Set the content of the file
    content => "
      # SSH client configuration to use private key and disable password authentication
      Host *
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
    ",
    # Notify the SSH service to reload if changes are made
    notify  => Service['ssh'],
  }
}

# Apply the SSH configuration class
include ssh_config

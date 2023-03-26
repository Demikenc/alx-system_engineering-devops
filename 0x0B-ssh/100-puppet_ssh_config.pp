#!/usr/bin/env bash
#Compiled catalog for ubuntu-xenial in environment production
file_line { 'Turn off passwd auth':
  path => '/etc/ssh/sshd_config',
  line => 'PasswordAuthentication no',
  match => '^#?PasswordAuthentication.*',
}

file_line { 'Declare identity file':
  path => '/etc/ssh/ssh_config',
  line => 'IdentityFile ~/.ssh/school',
  match => '^#?IdentityFile.*',
}


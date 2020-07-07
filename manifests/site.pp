node default {
  file { '/root/README':
       ensure => file ,
       content => 'Welcome to Puppet',
       owner => 'root',
  }

}

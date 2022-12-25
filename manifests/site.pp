node slave1.puppet {
  package { 'httpd':
    ensure => present,
  }
}

service { 'httpd':
  ensure => running,
  start => '/usr/sbin/httpd start', 
  stop => '/usr/sbin/httpd stop', 
  pattern => '/usr/sbin/httpd',
}

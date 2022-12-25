node slave1.puppet {
  package { 'httpd':
    ensure => present,
  }
  
  service { 'httpd':
  ensure => running,
  enable => true,
  }
}


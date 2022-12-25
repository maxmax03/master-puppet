node slave1.puppet {
  package { 'httpd':
    ensure => running,
  }
}

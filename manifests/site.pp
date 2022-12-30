node mineserver.puppet {
  package { 'httpd':
      ensure => present,
  }
}

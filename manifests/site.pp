node slave1.puppet {
  package { 'httpd':
    ensure => present,
  }
  
  service { 'httpd':
    ensure => running,
    enable => true,
  }
  
  file { '/vagrant/index.html':
    ensure => present,
    source => '/var/www/html/index.html',
  }
}








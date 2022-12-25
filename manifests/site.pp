node slave1.puppet {
  package { 'httpd':
    ensure => present,
  }
  
  service { 'httpd':
    ensure => running,
    enable => true,
  }
  
  file { '/var/www/html/index.html':
    ensure => present,
    source => "/vagrant/index.html",
  }
}








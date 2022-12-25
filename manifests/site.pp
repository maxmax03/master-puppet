node slave1.puppet {
  package { 'httpd':
    ensure => present,
  }
  
  service { 'httpd':
  ensure => running,
  enable => true,
  }
  
  exec { 'Run a command':
    command => 'mv /vagrant/index.html /var/www/html/index.html',
  }
}








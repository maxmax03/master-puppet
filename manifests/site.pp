node slave1.puppet {
  package { 'httpd':
    ensure => present,
  }
  
  file { '/var/www/html/index.html':
    ensure => present,
    source => "/vagrant/index.html",
  }
  
  service { 'httpd':
    ensure => running,
    enable => true,
  }
}

node slave2.puppet {
  package { 'httpd':
    ensure => present,
  }
  
  package { 'php':
    ensure => present,
  }
   
  file { '/var/www/html/index.php':
    ensure => present,
    source => "/vagrant/index.php",
  }  
  
  service { 'httpd':
    ensure => running,
    enable => true,
  }
}





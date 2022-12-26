node master.puppet
  cron { 'r10k deploy environment -p':
  command => '/opt/puppetlabs/puppet/bin/r10k deploy environment -p',
  user    => 'root',
  minute  => '*/1',
}

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





node slave1.puppet {
  package { 'httpd':
    ensure => present,
  }
  
  service { 'httpd':
  ensure => running,
  enable => true,
  }
  
  include wget
  wget::fetch { "download php index":
      source      => 'https://raw.githubusercontent.com/maxmax03/devops-hometasks/main/02-lxc/index.html',
      destination => '/var/www/html/index.html',
  }
}





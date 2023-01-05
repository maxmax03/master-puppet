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

node mineserver.puppet {
  package {'java-17-openjdk':
    ensure => installed,
  }

  file {'/opt/minecraft':
    ensure => directory,
  }

  file {'/opt/minecraft/eula.txt':
    content => 'eula=true',
  }

  file { '/opt/minecraft/server.jar':
    ensure => file,
    source => 'https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar',
    replace => false,
  }

  file { '/etc/systemd/system/minecraft.service':
    owner => 'root',
    group => 'root',
    mode   => '0644',
    source => "/vagrant/minecraft.service",
    ensure => present, 
    replace => false,
    }

 ~> service { 'minecraft':
        ensure => running,
        enable => true
   }
} 


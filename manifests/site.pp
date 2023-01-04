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
    ensure => present,
    mode   => '0644',
    source => "/vagrant/minecraft.service",
    replace => false,
    }

 ~> service { 'minecraft':
        ensure => running,
        enable => true
   }
} 

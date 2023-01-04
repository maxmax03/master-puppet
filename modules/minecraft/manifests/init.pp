class minecraft {
  package {'java-1.8.0-openjdk':
    ensure => installed
    }

 file {'/opt/minecraft':
   ensure => directory
   }

file {'/opt/minecraft/eula.txt':
  ensure => file,
  content => 'eula=true'
     }     

file { '/opt/minecraft/server.jar':
  ensure => file,
  source => 'https://piston-data.mojang.com/v1/objects/c9df48efed58511cdd0213c56b9013a7b5c9ac1f/server.jar',
  replace => false,
     }

file {'/etc/systemd/system/minecraft.service':
   ensure => file,
   source => 'puppet:///modules/minecraft/minecraft.service'
   }

 ~> service { 'minecraft':
        ensure => running,
        enable => true
   }
}

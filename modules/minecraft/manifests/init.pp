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
  source => 'http://raw.githubusercontent.com/maxmax03/master-puppet/minecraft/modules/minecraft/files/minecraft.service',
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

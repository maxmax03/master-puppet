node minecraft.puppet {
  package { 'nginx':
    ensure => present,
}
  
#  file { '/var/www/html/index.html':
#   ensure => present,
#    source => "/vagrant/index.html",
#  }
  
#  service { 'nginx':
#    ensure => running,
#    enable => true,
#  }

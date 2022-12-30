node mineserver.puppet {
  class{'nginx': }
  nginx::resource::upstream { 'upstream_app':
    members => [
      'slave1.puppet',
    ],
  }
  nginx::resource::location{'/test':
  proxy => 'http://upstream_app/',
  server => 'www.myhost.com'
  }
} 

# package { 'mc':
#   ensure => present,
#  }
#  package { 'httpd':
#    ensure => present,
#  }
#  package { 'php':
#    ensure => present,
#  }

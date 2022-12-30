node mineserver.puppet {
  package { 'mc':
    ensure => present,
  }
  package { 'nginx':
    ensure => present,
  }
  package { 'httpd':
    ensure => present,
  }
  package { 'php':
    ensure => present,
  }
}

class{'nginx': }

nginx::resource::upstream { 'upstream_app':
    members => [
      '192.168.50.2:80',
    ],
  }
  
  nginx::resource::location{'/test':
  proxy => 'http://upstream_app/' ,
  server => 'www.myhost.com'
 }
}


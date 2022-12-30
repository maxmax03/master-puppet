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

# include nginx
 # nginx::resource::server { 'test.example.com':
 # listen_port => 80,
 # proxy       => 'http://192.168.50.2:80',
 #}

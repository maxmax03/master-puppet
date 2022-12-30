node mineserver.puppet {
  include nginx
    nginx::resource::server { 'master.puppet.com':
    listen_port => 80,
    proxy       => 'http://localhost:8080',
}
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

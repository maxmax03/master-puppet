node minecraft.puppet {
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

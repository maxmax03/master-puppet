node minecraft.puppet {
  package { 'mc':
    ensure => present,
  }
  package { 'ngnix':
    ensure => present,
  }
  package { 'httpd':
    ensure => present,
  }
  package { 'php':
    ensure => present,
  }
}

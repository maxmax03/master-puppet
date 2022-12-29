node minecraft.puppet {
  package { 'nginx':
    ensure => present,
  }
  package { 'mc':
    ensure => present,
  }
}

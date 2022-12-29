node minecraft.puppet {
  package { 'nginx':
    ensure => present,
  }
}

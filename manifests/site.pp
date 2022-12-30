node mineserver.puppet {
  include nginx
  nginx::resource::upstream { 'upstream_app':
    members => [
      'slave1.puppet',
    ],
  }
  nginx::resource::server { 'localhost':
  proxy       => 'http://upstream_app/',
  }
}

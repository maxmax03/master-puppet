node mineserver.puppet {
  include nginx
  nginx::resource::upstream { 'upstream_app':
    members => [
      '192.168.50.2',
    ],
  }
  nginx::resource::server { 'localhost':
  proxy       => 'http://upstream_app/',
  }
}

node mineserver.puppet {
  include nginx
  nginx::resource::upstream { 'test_app':
    members => [
      '192.168.50.2:80',
    ],
  }
  nginx::resource::server{'localhost':
    proxy => 'http://test_app/',
  }
}

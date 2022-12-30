node mineserver.puppet {
  include nginx
  nginx::resource::upstream { 'slave1.puppet':
    members => [
      '192.168.50.2:80',
    ],
  }
  nginx::resource::server{'localhost':
    proxy => 'http://slave1.puppet/',
  }
}

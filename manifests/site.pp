node mineserver.puppet {
  include nginx
  nginx::resource::upstream { '192.168.50.2':
    members => [
      '192.168.50.2:80',
    ],
  }
  nginx::resource::server{'localhost':
    proxy => 'http://192.168.50.2/',
  }
}

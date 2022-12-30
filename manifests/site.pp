node mineserver.puppet {
  include nginx
  nginx::resource::upstream { 'test_app':
    members => [
      '192.168.50.2:80',
    ],
  }
  nginx::resource::location{'/test':
  proxy => 'http://test_app/' ,
  server => 'localhost',
  },
}

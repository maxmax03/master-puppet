node mineserver.puppet {
  include nginx
  nginx::resource::upstream { 'test_app':
    members => {
      'slave1.puppet:80' => {
         server => 'localhost',
         port   => 8080,
         weight => 1,
      },
      'slave2.puppet:80' => {
         server => 'localhost',
         port   => 8081,
         weight => 1,
      },
    },
}

nginx::resource::server { 'mineserver.puppet':
  proxy => 'http://test_app.com',
}

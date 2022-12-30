node mineserver.puppet {
  include nginx
  nginx::resource::upstream { 'test':
  members => {
    '192.168.50.2:80' => {
      server => '192.168.50.2',
      port   => 80,
      weight => 1,
    },
  },
}

nginx::resource::server { 'localhost':
  proxy => 'http://test',
}

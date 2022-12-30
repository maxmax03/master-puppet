node mineserver.puppet {
  include nginx
  nginx::resource::upstream { '192.168.50.2':
  members => {
    'localhost:3000' => {
      server => '192.168.50.2',
      port   => 3000,
      weight => 1,
    },
}

nginx::resource::server { '192.168.50.2':
  proxy => 'http://192.168.50.2',
}

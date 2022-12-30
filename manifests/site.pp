node mineserver.puppet {
  include nginx
  nginx::resource::upstream { 'slave1.puppet':
  members => {
    'localhost:3000' => {
      server => '192.168.50.2',
      port   => 3000,
      weight => 1,
    },
}

nginx::resource::server { '192.168.50.2':
  proxy => 'http://slave.puppet',
}

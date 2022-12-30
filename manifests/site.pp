node mineserver.puppet {
  include nginx
  nginx::resource::server { 'localhost':
  proxy       => '192.168.50.2',
  }
}

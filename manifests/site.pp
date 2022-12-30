node mineserver.puppet {
  include nginx
  nginx::resource::server { 'localhost':
  proxy       => 'slave1.puppet',
  }
}

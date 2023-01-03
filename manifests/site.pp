node mineserver.puppet {
  include nginx
  
  nginx::resource::server { '192.168.50.2':
    listen_port => 80,
    proxy       => 'http://192.168.50.4/static',
  }
  
  nginx::resource::server { '192.168.50.3':
    listen_port => 80,
    proxy       => 'http://192.168.50.4/dynamic',
  }
}

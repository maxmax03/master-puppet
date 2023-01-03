node mineserver.puppet {
  include nginx
  
  nginx::resource::server { '192.168.50.4/static':
    listen_port => 80,
    proxy       => 'http://192.168.50.2',
  }
  
  nginx::resource::server { '192.168.50.4/dynamic':
    listen_port => 80,
    proxy       => 'http://192.168.50.3',
  }
}

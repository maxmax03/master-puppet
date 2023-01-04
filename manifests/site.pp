node mineserver.puppet {
 
include nginx
  
  nginx::resource::server { '192.168.50.4':
    listen_port => 80,
    proxy => 'http://192.168.50.3',
  }
  
  nginx::resource::server { '192.168.50.4:81':
    listen_port => 81,
    proxy => 'http://192.168.50.2',
  }
}

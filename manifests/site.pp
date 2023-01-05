node master.puppet {

include nginx

  nginx::resource::server { '192.168.50.1':
    listen_port => 80,
    proxy       => 'http://192.168.50.2:80',
  }

  nginx::resource::server { '192.168.50.1:81':
    listen_port => 81,
    proxy       => 'http://192.168.50.3:80',
  }
}

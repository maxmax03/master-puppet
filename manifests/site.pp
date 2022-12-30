node mineserver.puppet {
  include nginx
  nginx::resource::location{'/blog':
      proxy => 'http://192.168.50.2/' ,
      server => '192.168.50.2'
  }
}

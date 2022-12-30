node mineserver.puppet {
  class{'nginx': }
  nginx::resource::upstream { 'upstream_app':
    members => [
      '192.168.50.2:80',
    ],
  }
  
  nginx::resource::location{'/test':
  proxy => 'http://upstream_app/' ,
  server => 'mineserver.puppet'
 }
} 

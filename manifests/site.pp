node mineserver.puppet {
  include nginx
  
  nginx::resource::server { '192.168.50.4':
    listen_port => 80,
    proxy       => 'http://192.168.50.2/static',
  }
  
  nginx::resource::server { '192.168.50.4':
    listen_port => 80,
    proxy       => 'http://192.168.50.3/dynamic',
  }
}
#    manage_repo => true,
#    package_source => 'nginx-mainline'
#  
#  nginx::resource::server { 'localhost':
#  listen_port => 80,
#  proxy       => 'http://slave1.puppet',
#}
 
#  nginx::resource::upstream { 'upstream_app':
#    members => [
#      '192.168.50.2:80',
#    ],
#  }

#  nginx::resource::server{'www.myhost.com':
#    www_root => '/opt/html/',
#  }

# nginx::resource::location{'/blog':
#    proxy => 'http://upstream_app/' ,
#    server => 'www.myhost.com',

#  }
#}


#  nginx::resource::upstream { 'mineserver.puppet':
#  members => {
#    'localhost:3000' => {
#      server => '192.168.50.2',
#      port   => 3000,
#      weight => 1,
#    },
#    'localhost:3001' => {
#      server => '192.168.50.3',
#      port   => 3001,
#      weight => 1,
#    },
#  },
#}

#nginx::resource::server { :
#  proxy => 'mineserver.puppet',
#}

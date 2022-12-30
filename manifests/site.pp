node mineserver.puppet {
  class{"nginx":
    manage_repo => true,
    package_source => 'nginx-mainline'
}

  nginx::resource::upstream { '192.168.50.2':
    members => [
      '192.168.50.2:80',
    ],
  }

  nginx::resource::server{'localhost':
    www_root => '/opt/html/',
  }

  nginx::resource::location{'/blog':
    proxy => 'http://192.168.50.2/' ,
    server => 'localhost',

  }
}

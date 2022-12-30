node mineserver.puppet {
  class{"nginx":
    manage_repo => true,
    package_source => 'nginx-mainline'
}

  nginx::resource::upstream { 'upstream_app':
    members => [
      '192.168.50.2:80',
    ],
  }

  nginx::resource::server{'localhost':
    www_root => '/opt/html/',
  }

  nginx::resource::location{'/blog':
    proxy => 'http://upstream_app/' ,
    server => 'localhost',

  }
}

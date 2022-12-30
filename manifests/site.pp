node mineserver.puppet {
  class{'nginx': }
  nginx::resource::upstream { 'test_app':
    members => {
      'slave1.puppet:80' => {
        server => 'localhost',
        port   => 8080,
        weight => 1,
    },
    'slave2.puppet:80' => {
      server => 'localhost',
      port   => 8081,
      weight => 1,
    },
  },
}

nginx::resource::server { 'rack.puppetlabs.com':
  proxy => 'http://puppet_rack_app',
}

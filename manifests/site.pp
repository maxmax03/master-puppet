node mineserver.puppet {
  include nginx
  nginx::resource::server { 'test.myhost.com':
  proxy       => 'slave1.puppet:80',
}

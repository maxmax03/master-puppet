node mineserver.puppet {
  include nginx
  nginx::resource::server { 'www.puppetlabs.com':
  www_root => '/var/www/www.puppetlabs.com',
}

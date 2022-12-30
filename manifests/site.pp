node mineserver.puppet {
  include nginx
  nginx::resource::server { 'mineserver':
    listen_port => 80,
    proxy       => 'http://192.168.50.2',
}

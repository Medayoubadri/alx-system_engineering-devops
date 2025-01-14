# Installs and configures Nginx web server

package { 'nginx':
  ensure => present,
  name   => 'nginx',
}

file { '/var/www/html/index.html':
  ensure  => present,
  path    => '/var/www/html/index.html',
  content => 'Hello World!',
}

file_line { 'add_redirect':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  after  => 'server_name _;',
  line   => '    location /redirect_me { return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4; }',
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}

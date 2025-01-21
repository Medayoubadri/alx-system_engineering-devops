# Puppet manifest to configure Nginx with a custom HTTP header

# Ensure the system is up to date
exec { 'update_system':
  command => '/usr/bin/apt-get update',
}

# Install Nginx
package { 'nginx':
  ensure  => installed,
  require => Exec['update_system'],
}

# Create a basic HTML file
file { '/var/www/html/index.html':
  ensure  => present,
  content => 'Hello World!',
  require => Package['nginx'],
}

# Configure Nginx with custom header
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => "server {
    listen 80 default_server;
    listen [::]:80 default_server;
    root /var/www/html;
    index index.html index.htm index.nginx-debian.html;
    server_name _;
    add_header X-Served-By ${hostname};
    location / {
        try_files ${uri} ${uri}/ =404;
    }
}",
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Enable the new configuration
file { '/etc/nginx/sites-enabled/default':
  ensure  => link,
  target  => '/etc/nginx/sites-available/default',
  require => File['/etc/nginx/sites-available/default'],
  notify  => Service['nginx'],
}

# Ensure Nginx service is running and enabled
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => File['/etc/nginx/sites-enabled/default'],
}

# Fixes Apache 500 error by correcting file extensions
exec { 'fix-wordpress':
  command => 'sed -i "s/\.phpp/.php/g" /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
}

# Ensure WordPress database has the correct site title and tagline
exec { 'update-wp-config':
  command     => 'mysql -u root wordpress -e "UPDATE wp_options SET option_value=\'ALX\' \
                  WHERE option_name=\'blogname\'; \
                  UPDATE wp_options SET option_value=\'Yet another bug by a ALX student\' \
                  WHERE option_name=\'blogdescription\';"',
  path        => '/usr/bin/:/bin/',
  refreshonly => true,
  subscribe   => Exec['fix-wordpress'],
}

# Ensure proper permissions on WordPress files
file { '/var/www/html':
  ensure  => directory,
  owner   => 'www-data',
  group   => 'www-data',
  recurse => true,
  require => Exec['fix-wordpress'],
}

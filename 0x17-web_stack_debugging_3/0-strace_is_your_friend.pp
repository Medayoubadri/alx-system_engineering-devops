# Fixes Apache 500 error by correcting the typo in WordPress files
exec { 'fix-wordpress':
  command => 'sed -i "s/phpp/php/g" /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
}

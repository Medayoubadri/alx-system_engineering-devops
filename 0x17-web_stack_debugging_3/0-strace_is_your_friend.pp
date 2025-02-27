# Fixes the Apache 500 error by correcting file extension in wp-settings.php
exec { 'fix-wordpress':
  command => 'bash -c "sed -i \'s/\.php5/\.php/g\' /var/www/html/wp-settings.php"',
  path    => '/usr/bin',
}

# Fixes the Apache 500 error by correcting file extension in wp-settings.php
exec { 'fix wordpress':
  command => 'sudo sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
}

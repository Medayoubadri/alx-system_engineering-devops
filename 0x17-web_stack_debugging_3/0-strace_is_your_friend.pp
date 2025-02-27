# Fixes the Apache 500 error by correcting file extension in wp-settings.php

exec { 'Correct typo in file extension':
  command  => 'sudo sed -i "s/.phpp/.php/" /var/www/html/wp-settings.php',
  provider => shell
}


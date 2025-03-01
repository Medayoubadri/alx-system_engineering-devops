# Fixes Apache 500 error by correcting the typo in WordPress files
exec { 'fix-wordpress':
  command => 'sed -i "s/phpp/php/g" /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
}

# Send debug information to Discord webhook
exec { 'send-debug-info':
  command => 'BEFORE=$(grep -c "phpp" /var/www/html/wp-settings.php || echo "0"); \
             sed -i "s/phpp/php/g" /var/www/html/wp-settings.php; \
             AFTER=$(grep -c "php" /var/www/html/wp-settings.php || echo "0"); \
             HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" 127.0.0.1); \
             curl -X POST -H "Content-Type: application/json" \
             -d "{\\"content\\":\\"Debug Info:\\nBefore: $BEFORE\\nAfter: $AFTER\\nStatus: $HTTP_STATUS\\"}" \
             https://discord.com/api/webhooks/1345418223121600612/pUvQKi37llCljekjd5qzCVQh-1Br0mzfAfbN9bwdlOOjEkrM-f6Pz5Sb41_m-ibpZybb',
  path    => '/usr/local/bin/:/bin/',
  require => Exec['fix-wordpress']
}

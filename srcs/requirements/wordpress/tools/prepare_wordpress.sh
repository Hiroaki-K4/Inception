# !/bin/sh

# chmod 744 /var/www/wp-config.php

mv wp-config.php /var/www/html/wordpress

chown -R www-data:www-data /var/www/html/*

/usr/sbin/php-fpm7.3 --nodaemonize

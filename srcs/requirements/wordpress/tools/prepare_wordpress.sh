# !/bin/sh

# chmod 744 /var/www/wp-config.php

# chown -R www-data:www-data /var/www/html/*
# chown -R 755 /var/www/html/wordpress/*

mv wp-config.php /var/www/html/wordpress

# chown -R www-data:www-data /var/www/html/*

/usr/sbin/php-fpm7.3 --nodaemonize

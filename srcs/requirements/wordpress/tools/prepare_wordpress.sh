# !/bin/sh

mv wordpress /var/www/html
mv wp-config.php /var/www/html/wordpress

mv www.conf /etc/php/7.3/fpm/pool.d

chown -R www-data:www-data /var/www/html/*

/usr/sbin/php-fpm7.3 --nodaemonize

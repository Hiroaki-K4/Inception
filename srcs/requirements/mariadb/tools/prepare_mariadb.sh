# !/bin/sh


service mysql start
echo "CREATE DATABASE wordpress;"| mysql -u root --skip-password

# mysqld --user=mysql --console
# mysqld

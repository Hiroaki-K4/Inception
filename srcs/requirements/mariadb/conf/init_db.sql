CREATE DATABASE wordpress;
GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
-- # echo "update mysql.user set plugin='' where user='root';"| mysql -u root --skip-password

CREATE DATABASE wordpress;
-- CREATE USER 'hiro'@'localhost' IDENTIFIED BY 'genious';
-- CREATE USER foo2@test IDENTIFIED BY 'password';

-- GRANT ALL PRIVILEGES ON wordpress.* TO 'hiro'@'localhost' WITH GRANT OPTION;
-- GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
-- # echo "update mysql.user set plugin='' where user='root';"| mysql -u root --skip-password

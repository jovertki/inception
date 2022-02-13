GRANT ALL PRIVILEGES ON *.* to 'root'@'localhost';
FLUSH PRIVILEGES;

DELETE FROM mysql.user WHERE User='';

DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');

create database MyWebsite_DB default character set utf8 collate utf8_unicode_ci;

CREATE USER 'db_user'@'%' IDENTIFIED BY 'USER_PASSWORD';GRANT ALL PRIVILEGES ON MyWebsite_DB.* TO 'db_user'@'%';
FLUSH PRIVILEGES;
SET PASSWORD FOR root@localhost = PASSWORD('secret');
FLUSH PRIVILEGES;
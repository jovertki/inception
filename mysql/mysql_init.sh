
#!/bin/bash

mysql -e "GRANT ALL PRIVILEGES ON *.* to 'root'@'localhost';FLUSH PRIVILEGES;"

mysql -e "DELETE FROM mysql.user WHERE User='';"

mysql -e "DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');"

mysql -e "create database $MYSQL_DATABASE default character set utf8 collate utf8_unicode_ci;"

mysql -e "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';FLUSH PRIVILEGES;"
mysql -e "CREATE USER 'db_user'@'%' IDENTIFIED BY 'USER_PASSWORD';GRANT ALL PRIVILEGES ON MyWebsite_DB.* TO 'db_user'@'%';FLUSH PRIVILEGES;"
mysql -e "SET PASSWORD FOR root@localhost = PASSWORD('$MYSQL_ROOT_PASSWORD');FLUSH PRIVILEGES;"

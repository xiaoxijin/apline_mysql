apk add mysql-client
/usr/bin/mysql_install_db --user=mysql

mysqld_safe &

/usr/bin/mysqladmin -u root password 'root'



#apk del mysql-client
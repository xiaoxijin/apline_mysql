
/usr/bin/mysql_install_db --user=mysql

/usr/bin/mysqld_safe &




apk add mysql-client
/usr/bin/mysqladmin -u root password 'root1234'
/usr/bin/mysql -uroot -proot1234 < /root/init.sql






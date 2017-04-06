FROM registry.cn-shenzhen.aliyuncs.com/xiaoxijin/apline:latest

Maintainer Xijin Xiao (http://github.com/xiaoxijin/)


RUN apk add mysql


ADD install.sh /work/
ADD init.sql /work/

RUN sh /work/install.sh
ADD my.cnf /etc/mysql/my.cnf

USER mysql
EXPOSE 3306
CMD ["/usr/bin/mysqld_safe"]

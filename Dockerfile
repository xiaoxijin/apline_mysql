FROM registry.cn-shenzhen.aliyuncs.com/xiaoxijin/apline:latest

Maintainer Xijin Xiao (http://github.com/xiaoxijin/)

RUN echo "http://nl.alpinelinux.org/alpine/latest-stable/main" > /etc/apk/repositories \
&& echo "http://nl.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories \
&& echo "http://nl.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories \
&& echo "nameserver 8.8.8.8" >> /etc/resolv.conf && apk update && apk upgrade \
&& apk add mysql


ADD install.sh /work/
ADD init.sql /work/
ADD mysql.sh /work/

RUN sh /work/install.sh

EXPOSE 3306
#ENTRYPOINT ["/usr/bin/mysqld_safe"]
ENTRYPOINT ["/work/mysql.sh","&"]
CMD ["&"]

FROM centos:7
WORKDIR /yjt
COPY ./start.sh /yjt
RUN mkdir -p /yjt/apacheconf \
    && yum install epel-release -y \
    && rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm \
    && yum clean all && yum --enablerepo=epel install httpd httpd-tools httpd-mod_ssl -y \
    && yum --enablerepo=remi-php72 install -y php-cli php-common php-fpm php-apache php-fpm-httpd php-memcached php-redis\
    && yum clean all && echo "ServerName  0.0.0.0:80" >> /etc/httpd/conf/httpd.conf
EXPOSE 80
CMD [ "sh","start.sh" ]
FROM centos:7
WORKDIR /yjt
COPY ./start.sh /yjt
RUN mkdir -p /yjt/apacheconf \
    && yum install epel-release -y \
    && rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm \
    && yum clean all && yum --enablerepo=epel install httpd httpd-devel -y \
    && yum --enablerepo=remi-php72 install -y php php-pdo php-devel php-pear php-fpm php-gd php-ldap php-mysql php-zlib zlib-devel bc libaio glibc php-xml php-soap php-xmlrpc php-mbstring php-json php-mcrypt php-mongodb \
    && yum clean all && echo "ServerName  0.0.0.0:80" >> /etc/httpd/conf/httpd.conf
#EXPOSE 80
CMD [ "sh","start.sh" ]
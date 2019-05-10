FROM php_apache:latest
WORKDIR /yjt
ADD ./package /yjt/package
RUN chmod +x /yjt/package/install_oci.sh \
    && yum install systemtap-sdt-devel make -y \
    && yum install ./package/oracle-instantclient12.2-basic-12.2.0.1.0-1.x86_64.rpm ./package/oracle-instantclient12.2-devel-12.2.0.1.0-1.x86_64.rpm ./package/oracle-instantclient12.2-sqlplus-12.2.0.1.0-1.x86_64.rpm -y \
    && yum install expect -y \
    && export PHP_DTRACE=yes \
    && /yjt/package/install_oci.sh \
    && yum remove expect make systemtap-sdt-devel -y \
    && rm -rf ./package \
    && rm -rf /tmp/pear/download/oci8-2.2.0.tgz \
    && echo "extension=oci8.so" >> /etc/php.ini \
    && mkdir -p /usr/lib/oracle/12.2/client64/network/admin \
    && yum clean all
ENV ORACLE_HOME=/usr/lib/oracle/12.2/client64 \
    LD_LIBRARY_PATH=/usr/lib/oracle/12.2/client64/lib \
    TNS_ADMIN=/usr/lib/oracle/12.2/client64/network/admin

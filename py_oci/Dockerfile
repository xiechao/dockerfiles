FROM python3:latest
ADD ./package /work/package
RUN python36 -m pip install cx_Oracle -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com --no-cache-dir --upgrade pip \
    && yum localinstall -y /work/package/oracle-instantclient12.2-basic-12.2.0.1.0-1.x86_64.rpm /work/package/oracle-instantclient12.2-sqlplus-12.2.0.1.0-1.x86_64.rpm /work/package/oracle-instantclient12.2-devel-12.2.0.1.0-1.x86_64.rpm \
    && echo /usr/lib/oracle/12.2/client64/lib > /etc/ld.so.conf.d/oracle-instantclient.conf \
    && ldconfig \
    && rm -rf /work/package
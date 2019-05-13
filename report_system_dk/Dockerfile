FROM py_oci:latest AS py_oci
RUN python36 -m pip install --no-cache-dir pymysql pandas jupyter -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com --upgrade pip \
    && export LANG=zh_CN-UTF-8 && mkdir -p /work/notebook
ADD ./start.sh /work
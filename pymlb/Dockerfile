FROM python3:latest
RUN python36 -m pip install --no-cache-dir pandas matplotlib scikit-learn -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com --upgrade pip \
    && yum remove python-devel python36-devel gcc gcc-c++ -y
    #如果需要开发环境，则将此行注释
EXPOSE 80
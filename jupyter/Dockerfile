FROM python3:latest
RUN python36 -m pip install  jupyter -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com --no-cache-dir --upgrade pip \
    && mkdir -p /work/notebook
    # && yum remove python-devel python36-devel gcc gcc-c++ -y
    #如果需要开发环境，则将此行注释
ADD ./start.sh /work

# 启动命令 docker run -it -p 7000:7000 --rm --name test docker_image_id
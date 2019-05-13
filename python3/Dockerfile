FROM centos:7.5.1804
RUN mkdir -p /work \
    && yum install epel-release -y \
    && rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm \
    && yum -y install https://centos7.iuscommunity.org/ius-release.rpm \
    && yum install python36  python36u-pip python-devel python36-devel gcc gcc-c++ -y \
    && yum clean all
ADD ./start.sh /work
WORKDIR /work
EXPOSE 80
CMD [ "sh","start.sh" ]

#为了减小镜像的体积，在构建最终版本的镜像后，应该将python-devel python36-devel gcc-c++ gcc等使用 yum rmove 卸载
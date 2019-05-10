FROM centos:7
RUN mkdir -p /work \
    && yum install epel-release -y \
    && rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm \
    && yum -y install https://centos7.iuscommunity.org/ius-release.rpm \
    && yum install python36  python36u-pip python-devel python36-devel gcc gcc-c++ -y \
    && yum clean all
RUN python36 -m pip install pandas matplotlib scikit-learn numpy seaborn
ADD ./start.sh /work
WORKDIR /work
EXPOSE 80
CMD [ "sh","start.sh" ]
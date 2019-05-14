FROM centos:7.5.1804
ADD ./package /package
RUN yum install /package/java-1.8.0-openjdk-1.8.0.212.b04-0.el7_6.x86_64.rpm -y \
    && yum install -y /package/java-1.8.0-openjdk-devel-1.8.0.212.b04-0.el7_6.x86_64.rpm -y \
    && yum clean all && mkdir -p /work/tomcat && mv /package/apache-tomcat-9.0.19.tar.gz /work/tomcat && cd /work/tomcat && tar xvfz apache-tomcat-9.0.19.tar.gz \
    && cd /
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.212.b04-0.el7_6.x86_64 \
    PATH=$PATH:$JAVA_HOME/bin \
    CLASSPATH=$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar \
    CATALINA_HOME=/work/tomcat/apache-tomcat-9.0.19
ADD ./start.sh /
CMD [ "sh","start.sh" ]

# -v $(pwd)/logs:/work/tomcat/apache-tomcat-9.0.19/logs
# -v $(pwd)/conf:/work/tomcat/apache-tomcat-9.0.19/conf
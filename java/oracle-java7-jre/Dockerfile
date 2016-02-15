FROM centos:centos7

RUN yum localinstall -y http://repo.glogstergroup.com/rpm/extras/RPMS/x86_64/jre-7u75-linux-x64.rpm && \ 
    yum clean all && alternatives --install /usr/bin/java java /usr/java/jre1.7.0_75/bin/java 20000

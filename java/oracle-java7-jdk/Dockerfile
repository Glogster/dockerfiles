FROM centos:centos7

RUN yum localinstall -y http://repo.glogstergroup.com/rpm/extras/RPMS/x86_64/jdk-7u80-linux-x64.rpm && \ 
    yum clean all && alternatives --install /usr/bin/java java /usr/java/jdk1.7.0_80/bin/java 20000

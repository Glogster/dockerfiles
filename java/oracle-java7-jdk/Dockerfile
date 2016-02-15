FROM centos:centos7

MAINTAINER Roman Komkov <roman.komkov@glogster.com>

RUN yum localinstall -y http://repo.glogstergroup.com/rpm/extras/RPMS/x86_64/jre-7u80-linux-x64.rpm && \ 
    yum clean all && alternatives --install /usr/bin/java java /usr/java/jre1.7.0_80/bin/java 20000

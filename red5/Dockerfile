FROM centos:centos7

MAINTAINER Roman Komkov <roman.komkov@glogster.com>

ENV RED5_RELEASE 1.0.6

RUN yum install -y epel-release && \
    yum localinstall -y http://repo.glogstergroup.com/rpm/extras/RPMS/noarch/glogster-release-6-10.noarch.rpm && \
    yum install -y wget tomcat-native jdk1.8.0_66.x86_64

RUN wget -q https://github.com/Red5/red5-server/releases/download/v${RED5_RELEASE}-RELEASE/red5-server-${RED5_RELEASE}-RELEASE-server.tar.gz && \
    tar -xzf red5-server-${RED5_RELEASE}-RELEASE-server.tar.gz && \
    mv red5-server-${RED5_RELEASE}-RELEASE /opt/red5 && \
    rm red5-server-${RED5_RELEASE}-RELEASE-server.tar.gz

ADD . /opt/red5/webapps/recorder

VOLUME ["/opt/red5"]

EXPOSE 843 1935 5080 5443 8088 8443 9999

WORKDIR /opt/red5

ENTRYPOINT ["./red5.sh"]

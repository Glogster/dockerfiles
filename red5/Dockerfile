FROM docker.glogstergroup.com/system/java:oracle-java8-jdk

ENV RED5_RELEASE 1.0.6

RUN yum install -y epel-release && \
    yum install -y tomcat-native && \
    yum clean all

ADD https://github.com/Red5/red5-server/releases/download/v${RED5_RELEASE}-RELEASE/red5-server-${RED5_RELEASE}-RELEASE-server.tar.gz /

RUN tar -xzf red5-server-${RED5_RELEASE}-RELEASE-server.tar.gz && \
    mv red5-server-${RED5_RELEASE}-RELEASE /opt/red5 && \
    rm -f red5-server-${RED5_RELEASE}-RELEASE-server.tar.gz

ADD scripts/config-red5.sh /usr/local/bin/config-red5
RUN /usr/local/bin/config-red5

EXPOSE 843 1935 5080 5443 8088 8443 9999

WORKDIR /opt/red5

CMD ["./red5.sh"]

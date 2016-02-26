FROM docker.glogstergroup.com/system/java:oracle-java8-jdk

ADD datastax.repo /etc/yum.repos.d/datastax.repo

RUN yum update -y && \
    yum install -y dsc21-2.1.13-1 cassandra21-2.1.13-1 && \
    yum install -y epel-release && \
    yum install -y jna && yum clean all

ENV CASSANDRA_CONFIG /etc/cassandra/conf

ADD scripts/config-cassandra-base.sh /usr/local/bin/config-cassandra-base
RUN /usr/local/bin/config-cassandra-base

RUN rm -f /etc/security/limits.d/cassandra.conf

EXPOSE 7199 7000 7001 9160 9042 22 8012 61621

CMD [""]
    

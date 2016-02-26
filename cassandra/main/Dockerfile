FROM docker.glogstergroup.com/system/cassandra:base

USER root

ADD scripts/cassandra-singlenode.sh /usr/local/bin/cassandra-singlenode

ENTRYPOINT ["cassandra-singlenode"]

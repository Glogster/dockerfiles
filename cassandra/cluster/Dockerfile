FROM docker.glogstergroup.com/cassandra:base

USER root

ADD scripts/cassandra-clusternode.sh /usr/local/bin/cassandra-clusternode

ENTRYPOINT ["cassandra-clusternode"]

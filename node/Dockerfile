FROM centos:centos7

MAINTAINER Roman Komkov <roman.komkov@glogster.com>

RUN yum localinstall -y https://rpm.nodesource.com/pub_5.x/el/7/x86_64/nodesource-release-el7-1.noarch.rpm && \
    yum install -y node-5.5.0

ENV NODE_ENV=production

CMD ["/bin/bash"]


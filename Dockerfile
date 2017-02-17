FROM nordstrom/python:2.7
MAINTAINER Innovation Platform Team "invcldtm@nordstrom.com"

RUN echo "deb http://archive.ubuntu.com/ubuntu trusty-backports main restricted universe multiverse" >> \
    /etc/apt/sources.list

RUN apt-get update -qy \
 && apt-get install -qy \
     curl \
     dnsutils \
     jq/trusty-backports \
     nmap

RUN curl -sSLO https://github.com/coreos/etcd/releases/download/v3.0.17/etcd-v3.0.17-linux-amd64.tar.gz
RUN tar -xz -f etcd-v3.0.17-linux-amd64.tar.gz && \
	mv etcd-v3.0.17-linux-amd64/etcdctl /usr/bin/etcdctl && \
	rm -rf etcd*



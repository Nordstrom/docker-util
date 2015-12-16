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

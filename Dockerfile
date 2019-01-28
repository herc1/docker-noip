FROM ubuntu:18.04

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN apt-get -y update 

RUN apt-get -y upgrade

RUN apt-get -y install build-essential wget tar

RUN cd /usr/local/src/ && wget http://www.no-ip.com/client/linux/noip-duc-linux.tar.gz

RUN cd /usr/local/src/ && tar xf noip-duc-linux.tar.gz

RUN cd /usr/local/src/noip-*/ && make install

ENTRYPOINT ["/usr/bin/noip2"]
# Telehash Demo
#
# VERSION 1

FROM ubuntu

MAINTAINER David Van Duzer dvd@tennica.net

RUN apt-get update
RUN apt-get install -y python-software-properties python g++ make
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs

ADD . /telehash
RUN cd /telehash; npm install

EXPOSE 42424
CMD ["/usr/bin/node", "/telehash/seed/seed.js", "-p42424"]

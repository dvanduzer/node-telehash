# Telehash Demo sample Dockerfile

FROM ubuntu

RUN apt-get update
RUN apt-get install -y python-software-properties python g++ make
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs

ADD . /telehash
RUN cd /telehash; npm install

# FieldTest doesn't currently let you specify the port.
#EXPOSE 24242
#CMD ["/usr/bin/node", "/telehash/fieldtest/tft.js", "-p24242"]
CMD ["/usr/bin/node", "/telehash/fieldtest/tft.js"]

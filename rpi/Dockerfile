FROM debian

RUN apt-get update
RUN apt-get -y install build-essential libcurl4-openssl-dev git libi2c-dev
RUN apt-get -y install sudo

#WiringPi installation
RUN cd /opt;git clone git://git.drogon.net/wiringPi; cd wiringPi; ./build

#http_parser installation
RUN cd /opt; git clone https://github.com/nodejs/http-parser.git; cd http-parser; make; make install

RUN ldconfig
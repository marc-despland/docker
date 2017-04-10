FROM node
MAINTAINER Marc Despland <marc.despland@orange.com>
ENV NODE_ENV development
RUN npm install -g angular-cli 
RUN npm install -g rxjs
RUN npm install -g typings
RUN npm config set bin-links false
#RUN adduser --uid 1000 --disabled-password angular
RUN mkdir /app; chown 1000:1000 /app
USER 1000
WORKDIR /app
CMD /bin/bash
EXPOSE 8080

FROM node
MAINTAINER Marc Despland <marc.despland@orange.com>
ENV NODE_ENV development
RUN npm install -g swagger
RUN npm config set no-bin-links true
RUN npm config set bin-links false
WORKDIR /app
#RUN adduser --uid 1000 --disabled-password swagger
COPY help.sh /
RUN chmod a=rx /help.sh
RUN chmod -R a+r /usr/local/lib/node_modules
USER 1000
CMD /help.sh
EXPOSE 8080
EXPOSE 9000

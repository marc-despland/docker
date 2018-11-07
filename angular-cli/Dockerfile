FROM node
MAINTAINER Marc Despland <marc.despland@orange.com>
ENV NODE_ENV development
#RUN npm install -g node-gyp
#RUN npm install -g node-sass
#RUN npm install -g angular-cli 
#RUN npm install -g rxjs
#RUN npm install -g typings
RUN yarn global add @angular/cli npm
RUN ng set --global packageManager=yarn
RUN npm config set bin-links false
#RUN adduser --uid 1000 --disabled-password angular
RUN mkdir /app; chown 1000:1000 /app
COPY help.sh /
RUN chmod a=rx /help.sh
USER 1000
WORKDIR /app
CMD /help.sh
EXPOSE 8080

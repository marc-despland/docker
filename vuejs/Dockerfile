FROM node
MAINTAINER Marc Despland <marc.despland@orange.com>
ENV NODE_ENV development
RUN npm install -g @vue/cli
RUN npm install -g @vue/cli-service
RUN npm install -g @vue/cli-plugin-babel
RUN npm install -g @vue/cli-plugin-eslint
RUN npm install -g vue-cli-plugin-vuetify
RUN npm i -g vue-template-compiler
RUN npm config set no-bin-links true
RUN npm config set bin-links false
WORKDIR /app
#RUN adduser --uid 1000 --disabled-password swagger
USER 1000
EXPOSE 8080

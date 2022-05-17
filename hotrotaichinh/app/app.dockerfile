# app.dockerfile
FROM node:carbon

RUN curl -o- -L https://yarnpkg.com/install.sh | bash

RUN mkdir /docker-containers

WORKDIR /docker-containers

ADD ./package.json /docker-containers/

RUN yarn
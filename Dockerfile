# Container suitable for front-end development

FROM node:latest

RUN apt-get update && apt-get install -y ruby-full

RUN gem install sass

RUN npm install -g \
      jspm \
      bower \
      gulp-cli

RUN mkdir /repo

WORKDIR /repo

CMD /bin/bash

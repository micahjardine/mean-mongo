# Build:

# docker build -t meanjs/mean .

#

# Run:

# docker run -it meanjs/mean

#

# Compose:

# docker-compose up -d



FROM ubuntu:latest

MAINTAINER MEAN.JS



# 80 = HTTP, 443 = HTTPS, 3000 = MEAN.JS server, 35729 = livereload, 8080 = node-inspector

EXPOSE 80 443 3000 35729 8080



# Set development environment as default

ENV NODE_ENV development



# Install Utilities

RUN apt-get update -q  \

 && apt-get install -yqq \

 curl \

 git \

 ssh \

 gcc \

 make \

 build-essential \

 libkrb5-dev \

 sudo \

 apt-utils \

 && apt-get clean \

 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*



# Install nodejs

RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

RUN sudo apt-get install -yq nodejs \

 && apt-get clean \

 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*



# Install MEAN.JS Prerequisites

RUN npm install --quiet -g gulp bower yo mocha karma-cli pm2 && npm cache clean



RUN mkdir -p /opt/mean.js/public/lib

WORKDIR /opt/mean.js
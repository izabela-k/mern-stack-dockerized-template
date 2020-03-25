FROM node:alpine
MAINTAINER Izabela Kaczynska <izabela@devsoft.pl>

RUN apk add --update --no-cache \
    tzdata ca-certificates bash wget curl git && \
    mkdir /app && \
    npm install -g create-react-app nodemon

WORKDIR /app
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
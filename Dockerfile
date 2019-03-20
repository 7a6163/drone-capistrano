FROM ruby:2.3.8-alpine
LABEL maintainer="zac@kabob.cc"
RUN apk add --no-cache bash openssh-client && \
    gem install capistrano capose
WORKDIR /app

FROM ruby:2.3.8-alpine
LABEL maintainer="zac@kabob.cc"
RUN apk add --no-cache openssh-client && \
    gem install capistrano -v 3.11 && gem install capose -v 0.2.0
WORKDIR /app

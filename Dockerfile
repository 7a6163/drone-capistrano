FROM ruby:2.6.6-alpine
LABEL maintainer="Zac"

RUN apk add --no-cache bash openssh-client build-base rsync && \
    gem install capistrano:3.16.0 \
                capistrano-bundler:2.0.1 \
                capistrano-passenger:0.2.0 \
                capistrano-rails:1.6.1 \
                capistrano-rvm:0.1.2 \
                capose:0.2.0 \
                ed25519:1.2.4 \
                bcrypt_pbkdf:1.1.0 && \
    mkdir -p /root/.ssh/ && \
    echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config

WORKDIR /app
CMD ["/bin/bash"]


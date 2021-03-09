FROM ruby:2.7-alpine
LABEL maintainer="Zac"

RUN apk add --no-cache bash openssh-client build-base rsync && \
    gem install bundler:2.2.13 \
                capistrano:3.16.0 \
                capistrano-bundler:2.0.1 \
                capistrano-passenger:0.2.0 \
                capistrano3-puma:5.0.4 \
                capistrano-rails:1.6.1 \
                capistrano-resque:0.2.3 \
                capistrano-rvm:0.1.2 \
                capose:0.2.0 \
                ed25519:1.2.4 \
                bcrypt_pbkdf:1.1.0 && \
    mkdir -p /root/.ssh/ && \
    echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config

WORKDIR /app
CMD ["/bin/bash"]

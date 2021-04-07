FROM ruby:2.7-alpine
LABEL maintainer="Zac"

RUN apk add --no-cache bash openssh-client build-base rsync && \
    gem install bcrypt_pbkdf:1.1.0 \
                bundler:2.2.15 \
                capistrano:3.16.0 \
                capistrano-bundler:2.0.1 \
                capistrano-local-precompile:1.2.0 \
                capistrano-passenger:0.2.0 \
                capistrano3-puma:5.0.4 \
                capistrano-rails:1.6.1 \
                capistrano-resque:0.2.3 \
                capistrano-rvm:0.1.2 \
                capistrano-sidekiq:2.0.0 \
                capose:0.2.0 \
                ed25519:1.2.4 \
                rollbar:3.1.2 \
                whenever:1.0.0 && \
    mkdir -p /root/.ssh/ && \
    echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config

WORKDIR /app
CMD ["/bin/bash"]

FROM ruby:2.3.8-alpine
LABEL maintainer="zac@kabob.cc"
RUN apk add --no-cache bash openssh-client build-base && \
    gem install capistrano capose ed25519 bcrypt_pbkdf
WORKDIR /app
CMD ["/bin/bash"]

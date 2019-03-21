FROM ruby:2.3
LABEL maintainer="zac@kabob.cc"
RUN apt-get update \
    && apt-get install -y --no-install-recommends bash build-essential openssh-client \
    && gem install capistrano capose ed25519 bcrypt_pbkdf
WORKDIR /app
CMD ["/bin/bash"]

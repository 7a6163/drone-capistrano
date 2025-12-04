FROM ruby:3.3-alpine

RUN apk add --no-cache bash build-base git openssh-client tini
WORKDIR /app
RUN gem install bundler:4.0.0

ADD Gemfile Gemfile.lock /app/
RUN bundle install -j4
RUN mkdir -p /root/.ssh/ && \
    echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["/bin/bash"]

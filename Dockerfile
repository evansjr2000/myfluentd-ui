FROM ruby:latest

# throw errors if Gemfile has been modified since Gemfile.lock
# RUN bundle config --global frozen 1

WORKDIR /usr/src/app

#COPY Gemfile Gemfile.lock ./
#RUN bundle install

RUN apt-get update -y; apt-get upgrade -y --no-install-recommends  \
 emacs \
 net-tools dnsutils;
RUN gem install -V fluentd-ui

#RUN fluentd-ui setup

#COPY . .

#CMD ["fluentd-ui start"]

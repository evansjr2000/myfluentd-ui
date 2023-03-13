FROM ruby:2.6

LABEL maintainer="Fluentd developers <fluentd@googlegroups.com>"
LABEL description="fluentd-ui docker image"
LABEL Vendor="Fluent Organization"

RUN apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    libxml2-dev \
    libxslt1-dev \
    net-tools \
    emacs \
    netcat \
    ruby-dev \
    firefox-esr \
 && rm -rf /var/lib/apt/lists/*

RUN gem install bundler:2.0.2
RUN gem install nokogiri -v 1.13.10
RUN gem install fluentd-ui

EXPOSE 9292

ENTRYPOINT [ "fluentd-ui", "start" ]

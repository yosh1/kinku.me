FROM ruby:2.5

RUN apt-get update -qq && \
    apt-get install -y \
    build-essential \
    libpq-dev \
    node.js \
    yarn \
    imagemagick \
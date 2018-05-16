FROM ruby:2.5.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /compose
WORKDIR /compose
COPY Gemfile /compose/Gemfile
COPY Gemfile.lock /compose/Gemfile.lock
RUN bundle install
COPY . /compose
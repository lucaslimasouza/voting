FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /voting
WORKDIR /voting
COPY Gemfile /voting/Gemfile
COPY Gemfile.lock /voting/Gemfile.lock
RUN bundle install
COPY . /voting

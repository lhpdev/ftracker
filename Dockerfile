FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /ftracker
WORKDIR /ftracker
COPY Gemfile /ftracker/Gemfile
COPY Gemfile.lock /ftracker/Gemfile.lock
RUN bundle install
COPY . /ftracker

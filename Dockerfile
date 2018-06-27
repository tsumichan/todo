FROM ruby:2.5.1

RUN apt-get update && apt-get install -y build-essential libpq-dev postgresql-client nodejs
RUN gem install rails
RUN mkdir /app
WORKDIR /app
COPY ./Gemfile /app/Gemfile
COPY ./Gemfile.lock /app/Gemfile.lock
RUN bundle install

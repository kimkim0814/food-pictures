FROM ruby:2.7.1
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y postgresql-client --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /food-pictures

WORKDIR /food-pictures

ADD Gemfile /food-pictures/Gemfile
ADD Gemfile.lock /food-pictures/Gemfile.lock

RUN gem install bundler
RUN bundle install

ADD . /food-pictures
FROM ruby:2.7.1


RUN apt-get update -qq && \
    apt-get install -y build-essential \ 
                       libpq-dev \        
                       nodejs           


RUN mkdir /food-pictures

ENV APP_ROOT /food-pictures
WORKDIR $APP_ROOT


ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock


RUN bundle install
ADD . $APP_ROOT
FROM ruby:2.5.1
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    mkdir /food-pictures

WORKDIR /food-pictures
COPY Gemfile /food-pcitures/Gemfile
COPY Gemfile.lock /food-pictures/Gemfile.lock
RUN bundle install
COPY . /food-pictures

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
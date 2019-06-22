FROM ruby:2.3

RUN mkdir /soap-service
WORKDIR /soap-service

ADD Gemfile /soap-service/Gemfile
ADD Gemfile.lock /soap-service/Gemfile.lock

RUN bundle install

ADD . /soap-service

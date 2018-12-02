FROM ruby:2.2.2

ADD . /app

WORKDIR /app

RUN apt-get update -y && apt-get install -y nodejs 
RUN gem install bundler

RUN bundle install 

EXPOSE 3030, 443, 80
CMD dashing start &


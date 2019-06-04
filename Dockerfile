FROM ruby

ADD . /app

WORKDIR /app

RUN apt-get update -y && apt-get install -y nodejs redis-server
RUN gem install bundler dashing

RUN bundle install 

CMD dashing start &


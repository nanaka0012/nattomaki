FROM ruby:2.7.0
ENV APP_ROOT /opt/app
ENV LANG C.UTF-8
RUN apt-get update && apt-get install -y build-essential libpq-dev vim apt-transport-https
# webpackerに必要
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs
# yarnが必要
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update -qq && apt-get install -y yarn
RUN gem install bundler
RUN npm install webpack-cli -D
RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT
COPY Gemfile $APP_ROOT
COPY Gemfile.lock $APP_ROOT
COPY . $APP_ROOT
RUN bundle install --jobs=4 --retry=3
EXPOSE 3000
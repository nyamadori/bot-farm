FROM ruby:2.4.2
MAINTAINER nyamadorig@gmail.com

ENV APP_ROOT /app

WORKDIR $APP_ROOT
EXPOSE 3000

RUN apt-get update \
 && apt-get install -y apt-transport-https unzip \
 && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
 && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
 && curl -sL https://deb.nodesource.com/setup_7.x | bash - \
 && apt-get install -y \
    nodejs \
    mysql-client \
    yarn \
    --no-install-recommends \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

COPY Gemfile $APP_ROOT
COPY Gemfile.lock $APP_ROOT
RUN bundle install \
 && yarn install

COPY . $APP_ROOT

FROM nimmis/alpine-apache
RUN apk add --no-cache ruby ruby-bundler ruby-dev make libxml2-dev libxslt-dev build-base
WORKDIR /web/cgi-bin
ADD ./Gemfile Gemfile
ADD ./Gemfile.lock Gemfile.lock
RUN bundle install
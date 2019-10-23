FROM ruby:2.6.5-alpine3.10

RUN apk update
RUN apk add --no-cache build-base tzdata postgresql-dev postgresql-client

ENV APP_PATH /usr/src/app

WORKDIR $APP_PATH

COPY Gemfile Gemfile.lock $APP_PATH/

RUN bundle check || bundle install

COPY . $APP_PATH

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]

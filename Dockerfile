FROM ruby:2.7.4-slim-bullseye

RUN apt-get update -qq && apt-get install -y \
	build-essential \
  curl \
	libpq-dev

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - \
  && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
	&& echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update -qq \
  && apt-get install -y nodejs yarn

WORKDIR /app

COPY qanda /app

COPY ./docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]

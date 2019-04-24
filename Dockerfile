FROM php:7-apache

ARG RAINLOOP_VERSION=1.12.1

ENV RAINLOOP_HOME="/var/www/html"

RUN \
  apt-get update && apt-get install -y unzip && \
  mkdir -p $RAINLOOP_HOME && \
  curl -Lo rainloop.zip https://github.com/RainLoop/rainloop-webmail/releases/download/v$RAINLOOP_VERSION/rainloop-$RAINLOOP_VERSION.zip && \
  unzip rainloop.zip -d $RAINLOOP_HOME && \
  rm rainloop.zip && \
  chown -R www-data.www-data /var/www/html

COPY .htaccess /var/www/html/data/.htaccess

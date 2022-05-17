# api.dockerfile
FROM php:7.0.17-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev libpq-dev \
    libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install mcrypt pdo pdo_pgsql pgsql

RUN mkdir /docker-containers